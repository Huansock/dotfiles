-- 파일 탐색 (Oil)
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "부모 폴더 열기" })

-- 검색 강조 해제 (:help :nohlsearch)
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "검색 강조 해제" })

-- 창 간 빠른 이동 (:help window-move-cursor)
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "왼쪽 창으로 이동" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "아래 창으로 이동" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "위 창으로 이동" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "오른쪽 창으로 이동" })

-- 비주얼 모드 편의 조작 (:help :move, :help gv)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "선택한 줄 아래로 이동" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "선택한 줄 위로 이동" })
vim.keymap.set("v", "<", "<gv", { desc = "들여쓰기 감소 후 선택 유지" })
vim.keymap.set("v", ">", ">gv", { desc = "들여쓰기 증가 후 선택 유지" })

-- FZF lua 단축어
vim.keymap.set("n", "<leader>ff", FzfLua.files, { desc = "Fzf 파일 검색" })
vim.keymap.set("n", "<leader>fg", FzfLua.live_grep, { desc = "Fzf 실시간 grep" })
vim.keymap.set("n", "<leader>fb", FzfLua.buffers, { desc = "Fzf 열린 버퍼" })
vim.keymap.set("n", "<leader>fh", FzfLua.help_tags, { desc = "Fzf 도움말 검색" })
vim.keymap.set("n", "<leader>fr", FzfLua.lsp_references, { desc = "Fzf LSP 참조 검색" })
vim.keymap.set("n", "<leader>fd", FzfLua.lsp_definitions, { desc = "Fzf LSP 정의 검색" })
vim.keymap.set("n", "<leader>xx", FzfLua.diagnostics_workspace, { desc = "Fzf 작업공간 진단 목록" })

