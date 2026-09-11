vim.lsp.enable('rust_analyzer')

vim.treesitter.start()

vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
