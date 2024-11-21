return {
	"folke/zen-mode.nvim",
	enabled = true,
	cmd = "ZenMode",
	opts = function(_, opts)
		-- Modify the options table directly
		opts.window = {
			backdrop = 0.95,
			width = 120, -- Width of the Zen window
			height = 1, -- Height of the Zen window
			options = {
				signcolumn = "no", -- Disable signcolumn
				number = false, -- Disable number column
				relativenumber = false, -- Disable relative numbers
			},
		}

		opts.plugins = {
			options = {
				enabled = true,
				ruler = false, -- Disables the ruler text in the cmd line area
				showcmd = false, -- Disables the command in the last line of the screen
				laststatus = 0, -- Turn off the statusline in zen mode
			},
			twilight = { enabled = false }, -- Disable Twilight plugin integration
			gitsigns = { enabled = false }, -- Disable git signs
			tmux = { enabled = true }, -- Disable the tmux statusline
			wezterm = {
				enabled = true,
				font = "+20", -- 10% font size increase per step
			},
		}
	end,

	config = function(_, opts)
		require("zen-mode").setup(opts)
	end,
}
