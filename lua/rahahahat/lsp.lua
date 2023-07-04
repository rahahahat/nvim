-- Reserve space for diagnostic icons
vim.opt.signcolumn = 'yes'

local lsp = require('lsp-zero')
lsp.preset('recommended')

local cmp = require("cmp")

cmp.setup({
  mapping = cmp.mapping.preset.insert({
      ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }),
  sources = {
    { name = 'nvim_lsp' }
  }
})

local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Configure lua language server for neovim
lsp.nvim_workspace()
lsp.setup()

require("lspconfig").clangd.setup({
    cmd = { "clangd" },
    filetypes = { "c", "cpp", "cc", "objc", "objcpp", "cuda", "proto" },
    capabilities = lsp_capabilities,
    on_attach = function()
                    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = 0 })
                    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = 0 })
                end,
    default_config = {
      root_dir = [[root_pattern('compile_commands.json', '.git')]],
    },
})

require("lspconfig").tsserver.setup{}
