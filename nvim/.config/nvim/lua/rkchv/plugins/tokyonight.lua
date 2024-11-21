return {
	"folke/tokyonight.nvim",
	enabled = true,
	lazy = false,
	priority = 1000,

	opts = function(_, opts)
		opts.transparent = false
		opts.style = "night"
		opts.styles = {
			comments = { italic = true },
			keywords = { italic = false },
			sidebars = "transparent",
			floats = "transparent",
			hide_inactive_statusline = true,
			lualine_bold = true,
		}

		opts.on_colors = function(colors)
			colors.bg_statusline = "#000000"
		end

		opts.on_highlights = function(highlights)
			highlights.ColorColumn.bg = "#000000"
		end
	end,

	config = function(_, opts)
		require("tokyonight").setup(opts)
	end,
}
