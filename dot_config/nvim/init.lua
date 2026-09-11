require('options')

-- vim.pack 문서 https://neovim.io/doc/user/pack/#vim.pack
vim.pack.add({
  'https://github.com/neovim/nvim-lspconfig' ,
  { src = "https://github.com/ms-jpq/coq_nvim" , version = 'coq'},
  { src = "https://github.com/ms-jpq/coq.artifacts" , version = 'artifacts'},
  { src = "https://github.com/ms-jpq/coq.thirdparty" , version = '3p'},
  "https://github.com/nvim-treesitter/nvim-treesitter",
  {src = "https://github.com/catppuccin/nvim", name = "catppuccin"}
  
})

vim.g.coq_settings = {}

require('coq')

vim.cmd("colorscheme catppuccin-frappe")

