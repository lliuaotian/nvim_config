local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- 添加文件到buf 更改快捷键为harpoon mark的缩写
vim.keymap.set("n", "<leader>hm", mark.add_file)
-- 列出文件 更改快捷键ctrl-e改为harpoon buf menu
vim.keymap.set("n", "<leader>hbm", ui.toggle_quick_menu)

-- 切换到第1、2、3、4file 记不住的快捷键索性先挂起来，使用quick_menu就行
-- vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
-- vim.keymap.set("n", "<C-t>", function() ui.nav_file(2) end)
-- vim.keymap.set("n", "<C-n>", function() ui.nav_file(3) end)
-- vim.keymap.set("n", "<C-s>", function() ui.nav_file(4) end)
