vim.opt.guicursor = ""

-- 显示行号
vim.opt.nu = true
-- 显示相对行号
vim.opt.relativenumber = true
-- 在底部显示当前模式
vim.opt.showmode = true
-- 支持鼠标
vim.opt.mouse = a
-- 保持缩进
vim.opt.autoindent = true
-- 按下tab缩进两个字符宽度(个人习惯两个，大多数情况是4个)
vim.opt.tabstop = 2
-- 以下两个设置是为了保持tab制表符和空格统一
-- 具体可以看(https://vi.stackexchange.com/questions/4244
-- /what-is-softtabstop-used-for)有解释为什么要保持一致
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
                          
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 16
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80"
