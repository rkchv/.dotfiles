return {
  {
    'neovim/nvim-lspconfig',
    enabled = true,
    config = function()

      local lspconfig = require('lspconfig')

      lspconfig.emmet_language_server.setup({
        filetypes = { "html", "svelte" },
      })

      lspconfig.svelte.setup({})

      lspconfig.tailwindcss.setup({})
      
      lspconfig.gopls.setup({
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
