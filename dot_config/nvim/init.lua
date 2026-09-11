-- vim.pack 문서 https://neovim.io/doc/user/pack/#vim.pack

-- file type plugin 문서 https://neovim.io/doc/user/filetype/#_2.-filetype-plugin

local gh = function(x) return 'https://github.com/' .. x end

vim.pack.add{
  gh('neovim/nvim-lspconfig') ,
}

local function smart_tab()
  if vim.fn.pumvisible() == 1 then
    return '<C-n>'
  end

  local col = vim.fn.col('.') - 1
  local line = vim.fn.getline('.')

  if col == 0 or string.match(string.sub(tostring(line), col, col), '%s') then
    return '<Tab>'
  end

  return '<C-x><C-o>'
end

vim.keymap.set('i', '<Tab>', smart_tab, { expr = true, replace_keycodes = true })

