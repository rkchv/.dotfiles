return {
  {
    "tpope/vim-fugitive",
    enable = true,
  },
  {
    "ThePrimeagen/git-worktree.nvim",
    enable = true,
  },
  {
    "NeogitOrg/neogit",
    enable = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
      "nvim-telescope/telescope.nvim",
    },
    config = function()
      local neogit = require("neogit")
      neogit.setup()

      vim.keymap.set("n", "<leader>gs", neogit.open, { silent = true, noremap = true })
      vim.keymap.set("n", "<leader>gc", ":Neogit commit<CR>", { silent = true, noremap = true })
      vim.keymap.set("n", "<leader>gp", ":Neogit pull<CR>", { silent = true, noremap = true })
      vim.keymap.set("n", "<leader>gP", ":Neogit push<CR>", { silent = true, noremap = true })
      vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>", { silent = true, noremap = true })
      vim.keymap.set("n", "<leader>gB", ":G blame<CR>", { silent = true, noremap = true })
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    enabled = true,

    opts = function(_, opts)
      opts.signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      }

      opts.signs_staged_enable = false
      opts.current_line_blame = true
      opts.current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>"
      opts.trouble = false
    end,

    -- on_attach = function(bufnr)
    --   local gs = package.loaded.gitsigns
    --
    --   local function map(mode, l, r, opts)
    --     opts = opts or {}
    --     opts.buffer = bufnr
    --     vim.keymap.set(mode, l, r, opts)
    --   end
    --
    --   -- Navigation
    --   map('n', ']c', function()
    --     if vim.wo.diff then return ']c' end
    --     vim.schedule(function() gs.next_hunk() end)
    --     return '<Ignore>'
    --   end, { expr = true })
    --
    --   map('n', '[c', function()
    --     if vim.wo.diff then return '[c' end
    --     vim.schedule(function() gs.prev_hunk() end)
    --     return '<Ignore>'
    --   end, { expr = true })
    --
    --   map({ 'n', 'v' }, '<leader>hs', ':Gitsigns stage_hunk<CR>')
    --   map({ 'n', 'v' }, '<leader>hr', ':Gitsigns reset_hunk<CR>')
    --   map('n', '<leader>hS', gs.stage_buffer)
    --   map('n', '<leader>ha', gs.stage_hunk)
    --   map('n', '<leader>hu', gs.undo_stage_hunk)
    --   map('n', '<leader>hR', gs.reset_buffer)
    --   map('n', '<leader>hp', gs.preview_hunk)
    --   map('n', '<leader>hb', function() gs.blame_line { full = true } end)
    --   map('n', '<leader>tB', gs.toggle_current_line_blame)
    --   map('n', '<leader>hd', gs.diffthis)
    --   map('n', '<leader>hD', function() gs.diffthis('~') end)
    --
    --   -- Text object
    --   map({ 'o', 'x' }, 'ih', ':<C-U>Gitsigns select_hunk<CR>')
    -- end,

    config = function(_, opts)
      require("gitsigns").setup(opts)
    end,
  },
}
