local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
  'clangd',
  'tsserver',
  'rust_analyzer',
})

local cmp = require('cmp')
cmp.setup({
  formatting = {
    fields = {"abbr", "kind", "menu"},
    format = function (entry, vim_item)
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        codeium = "[AI]",
        path = "[PATH]",
        buffer = "[Buf]",
      })[entry.source.name]
      return vim_item
    end,
  },
  -- nvim-cmp 设计的是根据需要安装相应的补全插件，以下sources就是安装的补全插件
  sources = {
    -- 应该是类似于插件之类的东西吧
    {name = "codeium"},
    -- {{name = "buffer"}, {option = {keyword_length = 2}}},
    {name = "buffer"},
    {name = "path"},
    {name = "cmdline"},
    {name = "nvim_lsp"},
  },
})

-- set show window max height
vim.opt.pumheight = 7

local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
  -- 貌似cmp和codeium会冲突
  ['<C-k>'] = cmp.mapping.complete(),
  ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
  ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
  ['<CR>'] = cmp.mapping.confirm({ select = true }),
  ['<C-u>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
  ['<C-d>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
})

cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
  mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'X',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.configure('lua_ls',{
  settings = {
    Lua = {
      diagnostics = {
        globals = {'vim'},
      },
    },
  },
})

lsp.on_attach(function(client, bufnr)
  local opts = {buffer = bufnr, remap = false}

  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  -- 更改当前的名字（全局），和简单的替换不一样
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

-- 启动lsp
lsp.setup()

vim.diagnostic.config({
    virtual_text = true
})
