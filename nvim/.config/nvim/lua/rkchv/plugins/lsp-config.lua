return {
  {
    'neovim/nvim-lspconfig',

    config = function()
      local lspconfig = require('lspconfig')

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
