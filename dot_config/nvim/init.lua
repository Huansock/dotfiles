-- vim.pack 문서 https://neovim.io/doc/user/pack/#vim.pack

-- file type plugin 문서 https://neovim.io/doc/user/filetype/#_2.-filetype-plugin

local gh = function(x) return 'https://github.com/' .. x end

vim.pack.add({
  -- lsp 설정 파일
  gh('neovim/nvim-lspconfig') ,
  -- coq 자동완성
  { src = gh("ms-jpq/coq_nvim") , version = 'coq'},
  { src = gh("ms-jpq/coq.artifacts") , version = 'artifacts'},
  { src = gh("ms-jpq/coq.thirdparty") , version = '3p'},
  
})

vim.g.coq_settings = {}

require('coq')


