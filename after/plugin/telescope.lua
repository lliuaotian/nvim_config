local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- 根据文件内容查找文件
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- 查找git仓库中的文件
vim.keymap.set('n', '<leader>git', builtin.git_files, {})
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
