vim.g.mapleader = " "

vim.keymap.set("n", "<leader>sg", vim.cmd.UndotreeToggle)
-- 设置leader+n打开文件树
vim.keymap.set("n", "<leader>n", vim.cmd.NvimTreeToggle)
