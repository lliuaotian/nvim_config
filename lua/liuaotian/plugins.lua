-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  -- 插件管理
  use 'wbthomason/packer.nvim'

  use {
    -- 文件检索插件
    -- live_grep功能需要riggrep的支持才能正常工作
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- 自动括号
  use {
    "windwp/nvim-autopairs",
  }

  use({
    'rose-pine/neovim',
    as = 'rose-pine',
    config = function()
      vim.cmd('colorscheme rose-pine')
    end
  })

  -- 代码诊断插件
  use({
    "folke/trouble.nvim",
    config = function()
      require("trouble").setup {
        icons = false,
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  })

  -- 代码高亮
  use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
  -- 直接在nvim中查看treesitter的信息
  use("nvim-treesitter/playground")
  -- buffer导航器
  use("theprimeagen/harpoon")
  -- 重构插件目前还没看懂怎么用
  use("theprimeagen/refactoring.nvim")
  -- 小git 会显示你文件更新的分支
  use("mbbill/undotree")
  -- Git插件
  use("tpope/vim-fugitive")
  -- 显示你当前在哪个工作域
  use("nvim-treesitter/nvim-treesitter-context");
  -- 启动页面
  use {
    'glepnir/dashboard-nvim',
    requires = {'nvim-tree/nvim-web-devicons'}
  }
  -- 文件大纲
  use{
    "simrat39/symbols-outline.nvim",
    require("symbols-outline").setup()
  }
  -- 文件树
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    }
  }
  -- ls补全 代码补全
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v1.x',
    requires = {
      -- LSP Support
      {'neovim/nvim-lspconfig'},
      -- mason是依赖npm的需要安装
      {'williamboman/mason.nvim'},
      {'williamboman/mason-lspconfig.nvim'},

      -- Autocompletion
      {'hrsh7th/nvim-cmp'},
      {'hrsh7th/cmp-buffer'},
      {'hrsh7th/cmp-path'},
      {'saadparwaiz1/cmp_luasnip'},
      {'hrsh7th/cmp-nvim-lsp'},
      {'hrsh7th/cmp-nvim-lua'},

      -- Snippets
      {'L3MON4D3/LuaSnip'},
      {'rafamadriz/friendly-snippets'},
    }
  }

  -- lsp美化
  use("glepnir/lspsaga.nvim")

  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")

end)
