
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.pack.add({
	'https://github.com/neovim/nvim-lspconfig',
	"https://github.com/nvim-treesitter/nvim-treesitter",
	{ src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
	'https://github.com/stevearc/oil.nvim.git',
	'https://github.com/nvim-mini/mini.icons',
	{ src = 'https://github.com/ms-jpq/coq_nvim', version = 'coq' },
	{ src = 'https://github.com/ms-jpq/coq.artifacts', version = 'artifacts' },
	{ src = 'https://github.com/ms-jpq/coq.thirdparty', version = '3p' },
	'https://github.com/ibhagwan/fzf-lua.git'
})

vim.cmd("colorscheme catppuccin-frappe")
vim.g.coq_settings = {
	-- COQ help fuzzy
	match = {
		exact_matches = 2
	},
	weights = {
		proximity = 0.0,
		recency = 0.0
	}
}

require('options')
require("oil").setup({ columns = { 'icon' }, skip_confirm_for_simple_edits = true })
require('mini.icons').setup()
require('fzf-lua').setup({ 'fzf-tmux' })
require('keymaps')

FzfLua.register_ui_select({
	winopts = {
		height = 0.33,
		width = 0.50
	}
})


