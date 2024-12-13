return {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio",
      "theHamsta/nvim-dap-virtual-text",
    },
  },
  {
    "folke/tokyonight.nvim",
    enabled = true,
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

      opts.on_highlights = function(hl, colors)
        hl.WinSeparator = { fg = colors.bg_highlight, bg = colors.none }
      end
    end,

    config = function(_, opts)
      require("tokyonight").setup(opts)
      vim.cmd.colorscheme "tokyonight"
    end,
  },
  {
    "tpope/vim-obsession",
    enable = true,
    cmd = "Obsession",
  },
  {
    "kyazdani42/nvim-web-devicons",
    enable = true
  },
  {
    "folke/todo-comments.nvim",
    enable = true,
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },
}
