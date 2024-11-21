return {
  {
    "neovim/nvim-lspconfig",
    -- "jose-elias-alvarez/null-ls.nvim",
    enabled = true,

    config = function()
      local lspconfig = require('lspconfig')

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
    end,
  },
}

-- return {
-- 	{
-- 		"williamboman/mason.nvim",
-- 		dependencies = {
-- 			"williamboman/mason-lspconfig.nvim",
-- 			"neovim/nvim-lspconfig",
-- 			"jose-elias-alvarez/null-ls.nvim",
-- 		},
-- 		enabled = true,
--
-- 		config = function()
-- 			require("mason").setup()
--
-- 			local mason_lspconfig = require("mason-lspconfig")
--
-- 			mason_lspconfig.setup({
-- 				ensure_installed = { "gopls", "yamlls", "lua_ls" },
-- 			})
--
-- 			local lspconfig = require("lspconfig")
--
-- 			mason_lspconfig.setup_handlers({
-- 				function(server_name)
-- 					local opts = {}
--
-- 					if server_name == "yamlls" then
-- 						opts = {
-- 							settings = {
-- 								yaml = {
-- 									format = { enable = true },
-- 									schemas = {
-- 										["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
-- 									},
-- 								},
-- 							},
-- 						}
-- 					end
--
-- 					lspconfig[server_name].setup(opts)
-- 				end,
-- 			})
--
-- 			-- ======================================
--
-- 			local null_ls = require("null-ls")
--
-- 			null_ls.setup({
-- 				sources = {
-- 					null_ls.builtins.formatting.stylua,
-- 				},
-- 			})
-- 		end,
-- 	},
-- }
