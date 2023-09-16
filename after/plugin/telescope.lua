-- 设置快捷键
local builtin = require('telescope.builtin')
-- find_files
-- 函数中可以跟参数cwd，cwd的值就是find_files找寻文件的目录，默认为当前文件的当前目录
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
-- 根据文件内容查找文件
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- 查找git仓库中的文件
vim.keymap.set('n', '<leader>git', builtin.git_files, {})
-- help doc查看当前帮助文档
vim.keymap.set('n', '<leader>hd', builtin.help_tags, {})
-- 当前工作的缓冲区
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})

-- 设置出现的窗口宽高
require('telescope').setup{
  defaults = {
    -- 修改显示的窗口布局 通过help telescope中layout_strategy可以查看
    -- 如果列的数量低于120
    -- 不会显示右边的文件内容，layout_strategy的默认内容就是horizontal
    layout_strategy = 'horizontal',
    layout_config = {
      -- height = 0.7,
      -- 这一行设置 不管当前窗口多少列都显示preview，但是这样肯定显示的效果不好
      preview_cutoff = 0,
    },
  }
}
