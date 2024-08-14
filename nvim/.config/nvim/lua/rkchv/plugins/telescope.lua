return {
  "nvim-telescope/telescope.nvim",
  enabled = true,
  cmd = {"Telescope"},

  dependencies = {
    "nvim-lua/plenary.nvim",
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release'
    }
  },

  -- {{{ keymaps

  keys = function()
    local cmdT = "<cmd>Telescope "
    local cmdL = "<cmd>lua require('telescope')."
    return {
      {"<leader>ff", cmdT .. "git_files<cr>", desc = "Telescope Find files" },
      {"<leader>fc", cmdT .. "git_commits<cr>", desc = "Telescope git commits" },
      {"<leader>fb", cmdT .. "git_branches<cr>", desc = "Telescope git branches" },
      {"<leader>fs", cmdT .. "git_status<cr>", desc = "Telescope git status" },
      {"<leader>tf", cmdT .. "find_files<cr>", desc = "Telescope All files" },
      {"<leader>tg", cmdT .. "live_grep<cr>", desc = "Telescope Live Grep" },
      {"<leader>tb", cmdT .. "buffers<cr>", desc = "Telescope buffers" },
      {"<leader>tc", cmdT .. "commands<cr>", desc = "Telescope commands" },
      {"<leader>tr", cmdT .. "registers<cr>", desc = "Telescope registers" },
      {"<leader>tk", cmdT .. "keymaps<cr>", desc = "Telescope keymaps" },
    }
  end,

  -- ----------------------------------------------------------------------- }}}
  -- {{{ opts

  opts = function(_, opts)
    local actions = require("telescope.actions")
    opts.defaults = {
      layout_config = {
        prompt_position = "top",
        height = 0.7,
        width = 0.87,
      },
      layout_strategy = "horizontal",
      mappings = {
        i = {
          ["<c-j>"] = actions.move_selection_next,
          ["<c-k>"] = actions.move_selection_previous,
        },
      },
      sorting_strategy = "ascending",
      winblend = 0,
    }
    opts.pickers = {
      colorscheme = { enable_preview = true },
    }
    opts.extensions = {
      file_browser = {
        hijack_netrw = true,
      },
    }
  end,

  -- ----------------------------------------------------------------------- }}}
  -- {{{ config

  config = function(_, opts)
    local telescope = require("telescope")
    telescope.setup(opts)
    telescope.load_extension('fzf')
  end,
}

  -- ----------------------------------------------------------------------- }}}
