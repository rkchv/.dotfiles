return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim"
    },
    enabled = true,

    config = function()
      local lspconfig = require('lspconfig')
      -- local null_ls = require('null-ls')

      lspconfig.bashls.setup({
        cmd = { "bash-language-server", "start" },
        filetypes = { "bash", "sh", "zsh" },
        settings = {
          bash = {
            enable = true,
            strict = true,
            highlight = true,
            completion = {
              enable = true,
              triggerAutoComplete = true,
            },
            hover = {
              enable = true,
            },
            diagnostics = {
              enable = true,
              lint = true,
            },
            format = {
              enable = true,
              settings = {
                tabWidth = 2,
                indentStyle = "space",
              }
            }
          }
        }
      })

      lspconfig.yamlls.setup({
        settings = {
          yaml = {
            format = {
              enable = true,
            },
            schemas = {
              ["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
            },
          },
        },
      })

      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            format = {
              enable = true,
              defaultConfig = {
                indent_style = "space",
                indent_size = "2",
              }
            },
            runtime = {
              version = 'LuaJIT', -- LuaJIT is used in Neovim
            },
            diagnostics = {
              enable = true,       -- Enable diagnostics for undefined variables
              globals = { 'vim' }, -- Recognize 'vim' as a global variable in Neovim config files
            },
            telemetry = {
              enable = false, -- Disable telemetry (send anonymous usage data)
            },
          },
        },
      })

      lspconfig.gopls.setup({
        settings = {
          gopls = {
            analyses = {
              unusedparams = true,
              shadow = true,
              nilness = true,
            },
            staticcheck = true,
            completeUnimported = true,
            gofumpt = true,
            usePlaceholders = true,
            linksInHover = true,
          },
        },
      })

      -- null_ls.setup({
      --   sources = {
      --     null_ls.builtins.diagnostics.buf,
      --     null_ls.builtins.formatting.buf,
      --   },
      -- })
    end,
  },
}
