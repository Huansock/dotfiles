vim.g.mapleader = ' '

vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "부모 폴더 열기" })

--  FZF lua 단축어
vim.keymap.set('n', '<leader>ff', FzfLua.files, { desc = 'Fzf 파일 검색' })
vim.keymap.set('n', '<leader>fg', FzfLua.live_grep, { desc = 'Fzf 실시간 grep' })
vim.keymap.set('n', '<leader>fb', FzfLua.buffers, { desc = 'Fzf 열린 버퍼' })
vim.keymap.set('n', '<leader>fh', FzfLua.help_tags, { desc = 'Fzf 도움말 검색' })
vim.keymap.set('n', '<leader>fr', FzfLua.lsp_references, { desc = 'Fzf LSP 참조 검색' })
