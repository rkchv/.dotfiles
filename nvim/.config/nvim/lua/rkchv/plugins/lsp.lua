return {
  {
    'neovim/nvim-lspconfig',
    enabled = true,
    lazy = false,
    config = function()
      vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
      vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
      vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
      vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

      local lspconfig = require('lspconfig')
      local on_attach = function(client, bufnr)
        local bufopts = { noremap = true, silent = true, buffer = bufnr }
        vim.keymap.set('n', '<leader>bD', vim.lsp.buf.declaration, bufopts)
        vim.keymap.set('n', '<leader>bh', vim.lsp.buf.hover, bufopts)
        vim.keymap.set('n', '<leader>bd', vim.lsp.buf.definition, bufopts)
        vim.keymap.set('n', '<leader>br', vim.lsp.buf.references, bufopts)
        vim.keymap.set('n', '<leader>bi', vim.lsp.buf.implementation, bufopts)
        vim.keymap.set('n', '<leader>brn', vim.lsp.buf.rename, bufopts)
        vim.keymap.set('n', '<leader>bca', vim.lsp.buf.code_action, bufopts)
        vim.keymap.set('n', '<leader>bf', vim.lsp.buf.format, bufopts)
        vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, bufopts)
        vim.keymap.set('n', ']d', vim.diagnostic.goto_next, bufopts)
        vim.keymap.set('n', 'ds', vim.diagnostic.setloclist, bufopts)
      end
      
      lspconfig.gopls.setup({
        on_attach = on_attach,
        settings = {
          gopls = {
            analyses = { unusedparams = true },
            staticcheck = true,
          },
        },
      })
    end,
  },
}
