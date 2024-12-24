return {
  "nvim-treesitter/nvim-treesitter",
  enabled = true,
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
  },

  config = function()
    require("nvim-treesitter.configs").setup({

      ensure_installed = {
        "proto",
        "bash",
        "c",
        "dockerfile",
        "go",
        "gomod",
        "lua",
        "markdown",
        "sql",
        "toml",
        "yaml",
        "tsx",
        "typescript",
        "javascript",
        "json",
        "html",
        "css",
      },

      auto_install = false,
      highlight = { enable = true },
      indent = { enable = true },

      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",    -- maps in normal mode to init the node/scope selection
          node_incremental = "grn",  -- increment to the upper named parent
          scope_incremental = "grc", -- increment to the upper scope (as defined in locals.scm)
          node_decremental = "grm"   -- decrement to the previous node
        }
      },

      textobjects = {
        enable = true,
        lsp_interop = {
          enable = true,
          peek_definition_code = {
            ["DF"] = "@function.outer",
          }
        },
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["aC"] = "@class.outer",
          ["iC"] = "@class.inner",
          ["ac"] = "@conditional.outer",
          ["ic"] = "@conditional.inner",
          ["ae"] = "@block.outer",
          ["ie"] = "@block.inner",
          ["al"] = "@loop.outer",
          ["il"] = "@loop.inner",
          ["is"] = "@statement.inner",
          ["as"] = "@statement.outer",
          ["ad"] = "@comment.outer",
          ["am"] = "@call.outer",
          ["im"] = "@call.inner"
        },
        move = {
          enable = true,
          set_jumps = true, -- whether to set jumps in the jumplist
          goto_next_start = {
            ["[["] = "@function.outer",
          },
          goto_next_end = {
            ["]]"] = "@function.outer",
          },
          -- goto_previous_start = {
          --   ["]["] = "@function.outer",
          -- },
          -- goto_previous_end = {
          --   ["[]"] = "@function.outer",
          -- }
        },
        select = {
          enable = true,
          keymaps = {
            ["af"] = "@function.outer",
            ["if"] = "@function.inner",
            ["ac"] = "@class.outer",
            ["ic"] = "@class.inner",
          }
        },
        swap = {
          enable = true,
          swap_next = {
            ["<leader>a"] = "@parameter.inner"
          },
          swap_previous = {
            ["<leader>A"] = "@parameter.inner"
          }
        }
      }
    })
  end,
}
