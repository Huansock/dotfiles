-- vim.pack 문서 https://neovim.io/doc/user/pack/#vim.pack

-- file type plugin 문서 https://neovim.io/doc/user/filetype/#_2.-filetype-plugin

vim.pack.add({
  -- lsp 설정 파일
  'https://github.com/neovim/nvim-lspconfig' ,
  -- coq 자동완성
  { src = "https://github.com/ms-jpq/coq_nvim" , version = 'coq'},
  { src = "https://github.com/ms-jpq/coq.artifacts" , version = 'artifacts'},
  { src = "https://github.com/ms-jpq/coq.thirdparty" , version = '3p'},
  -- treesitter
  "https://github.com/nvim-treesitter/nvim-treesitter",
  {src = "https://github.com/catppuccin/nvim", name = "catppuccin"}
  
})

vim.g.coq_settings = {}

require('coq')

vim.cmd("colorscheme catppuccin-frappe")

