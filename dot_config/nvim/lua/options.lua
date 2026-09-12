-- 줄 번호 및 커서 라인 표시
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.signcolumn = "yes"
vim.opt.wrap = false
vim.opt.list = true

-- 대소문자 스마트 검색
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- 클립보드 및 실행 취소 기록 (:help 'undofile')
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true

-- 창 분할 방향 (:help 'splitright', :help 'splitbelow')
vim.opt.splitright = true
vim.opt.splitbelow = true

-- 스크롤 여백 및 반응 속도 (:help 'scrolloff', :help 'updatetime', :help 'timeoutlen')
vim.opt.scrolloff = 10
vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

-- 치환 실시간 미리보기 (:help 'inccommand')
vim.opt.inccommand = "split"

