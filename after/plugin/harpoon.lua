local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- 添加文件到buf
vim.keymap.set("n", "<leader>a", mark.add_file)
-- 列出文件
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

-- 切换到第1、2、3、4file 记不住的快捷键索性先挂起来，使用quick_menu就行
-- vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
-- vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
-- vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
-- vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
