return {
	{
		"williamboman/mason.nvim",
		dependencies = {
			"williamboman/mason-lspconfig.nvim",
			"neovim/nvim-lspconfig",
			"jose-elias-alvarez/null-ls.nvim",
		},
		enabled = true,

		config = function()
			require("mason").setup()

			local mason_lspconfig = require("mason-lspconfig")

			mason_lspconfig.setup({
				ensure_installed = { "gopls", "yamlls", "lua_ls" },
			})

			local lspconfig = require("lspconfig")

			mason_lspconfig.setup_handlers({
				function(server_name)
					local opts = {}

					if server_name == "yamlls" then
						opts = {
							settings = {
								yaml = {
									format = { enable = true },
									schemas = {
										["http://json.schemastore.org/github-workflow"] = ".github/workflows/*",
									},
								},
							},
						}
					end

					lspconfig[server_name].setup(opts)
				end,
			})

			-- ======================================

			local null_ls = require("null-ls")

			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
				},
			})
		end,
	},
}
