
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.pack.add({
	'https://github.com/neovim/nvim-lspconfig',
	"https://github.com/nvim-treesitter/nvim-treesitter",
	{ src = "https://github.com/catppuccin/nvim", name = "catppuccin" },
	'https://github.com/stevearc/oil.nvim.git',
	'https://github.com/nvim-mini/mini.icons',
	'https://github.com/nvim-mini/mini.starter',
	{ src = 'https://github.com/ms-jpq/coq_nvim', version = 'coq' },
	{ src = 'https://github.com/ms-jpq/coq.artifacts', version = 'artifacts' },
	{ src = 'https://github.com/ms-jpq/coq.thirdparty', version = '3p' },
	'https://github.com/ibhagwan/fzf-lua.git',
	'https://github.com/mason-org/mason.nvim.git',
	'https://github.com/mason-org/mason-lspconfig.nvim.git'
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

local starter = require('mini.starter')
starter.setup({
	evaluate_single = true,
	items = {
		starter.sections.recent_files(5, true),
		starter.sections.recent_files(5, false),
		{ name = 'Files (Fzf)', action = 'FzfLua files', section = 'Actions' },
		{ name = 'Grep (Fzf)', action = 'FzfLua live_grep', section = 'Actions' },
		{ name = 'Explorer (Oil)', action = 'Oil', section = 'Actions' },
		{ name = 'New buffer', action = 'enew', section = 'Builtin actions' },
		{ name = 'Quit', action = 'qall', section = 'Builtin actions' },
	},
	content_hooks = {
		starter.gen_hook.adding_bullet(),
		starter.gen_hook.padding(3, 2),
	},
})

require("mason").setup()
require("mason-lspconfig").setup()
