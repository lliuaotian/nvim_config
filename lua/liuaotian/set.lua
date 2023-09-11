-- 模式nvim的基础设置
vim.opt.guicursor = ""

-- 显示行号
vim.opt.nu = true
-- 显示相对行号
vim.opt.relativenumber = true
-- 高亮当前行
vim.opt.cursorline = true
-- 设置一行最多显示多少个字符
vim.opt.textwidth = 80
-- 超过行数自动换行
vim.opt.wrap = true
-- 只有在不是一整个单词的时候才会折行
vim.opt.linebreak = true
-- 在底部显示当前模式
vim.opt.showmode = true
-- 支持鼠标
vim.opt.mouse = a
-- 保持缩进
vim.opt.autoindent = true
-- 按下tab缩进两个字符宽度(个人习惯两个，大多数情况是4个)
vim.opt.tabstop = 2
-- 具体可以看(https://vi.stackexchange.com/questions/4244/w                   hat-is-softtabstop-used-for)
-- tab转换为多少个空格
vim.opt.softtabstop = 2
-- 使用位移符号时缩进的长度(>>或<<)
vim.opt.shiftwidth = 2
-- 不同编辑器对tab缩进的长度不一样，为保持一致，将tab转换为空格
vim.opt.expandtab = true
-- 高亮显示搜索结果
vim.opt.hlsearch = true
-- 搜索时实时跳转搜索内容
vim.opt.incsearch = true
-- 搜索时忽略大小写
vim.opt.ignorecase = true
-- 搜索时对第一个字母是大写的情况下，不忽略大小写
vim.opt.smartcase = true


vim.opt.smartindent = true

-- vim.opt.wrap = false
-- 不生成交换文件和备份文件
vim.opt.swapfile = false
vim.opt.backup = false
-- 保留撤销历史
-- 也就是你文件的更改记录，该选项可以在重新打开文件后还可以撤销上一次的操作
vim.opt.undofile = true
-- 设置缓存文件、备份文件和更改记录存放的文件夹
-- 但是设置的是不生成备份和交换文件，所以这个目录不是很有意义，为以后做准备吧。
vim.opt.backupdir = "~/.nvim/.backup"
vim.opt.directory = "~/.nvim/.swp/"
vim.opt.undodir = "~/.nvim/.undo/"
-- 自动切换到当前文件的工作目录
-- 如果为false，你使用help查看某个命令时可以 !pwd看一下路径，还是当前文件的路径
-- 如果为true，在help里 !pwd返回的就是help所在的工作路径
vim.opt.autochdir = true
-- vim需要记住多少次命令的历史操作为1000次
vim.opt.history = 1000
-- 打开文件监视，如果在编辑过程中，文件在其他地方发生变化就会提示
vim.opt.autoread = true
-- 如果行尾有空余字符就提示
vim.opt.list = true
-- 设置多余的空格编程符号·
vim.opt.listchars = "trail:·"
-- 开启真彩色
-- (https://github.com/gnachman/iTerm2/blob/master/tests/24-bit-color.sh"这个链接里的脚本可以验证你的终端支不支持真彩色
vim.opt.termguicolors = true

-- 使光标所在当前行位于屏幕顶部和底部最少16行
vim.opt.scrolloff = 16
-- signcolumn显示的是最左侧一列，设置成自动需要的时候弹出
vim.opt.signcolumn = "auto"
-- 暂时还没理解这个选项是什么意义
-- vim.opt.isfname:append("@-@")
-- 自动命令事件相隔时间
vim.opt.updatetime = 500
-- 在80列处显示一道竖线，感觉没什么用
-- vim.opt.colorcolumn = "80"
-- 开启nvim-treesitter-context
vim.cmd.TSContextEnable = true
