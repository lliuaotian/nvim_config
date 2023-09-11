vim.g.mapleader = " "

vim.keymap.set("n", "<leader>sg", vim.cmd.UndotreeToggle)
-- 设置leader+n打开文件树
vim.keymap.set("n", "<leader>n", vim.cmd.NvimTreeToggle)

-- 切换vim的tab到下一个
vim.keymap.set("n", "<leader>tn", vim.cmd.tabn)
-- 切换vim的tab到上一个
vim.keymap.set("n", "<leader>tp", vim.cmd.tabp)
-- tab之间循环切换
vim.keymap.set("n", "<leader>tt", vim.cmd.tabp)
