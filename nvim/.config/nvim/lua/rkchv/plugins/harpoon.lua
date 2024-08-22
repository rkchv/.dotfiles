return {
  "ThePrimeagen/harpoon",
  enabled = true,
  branch = "harpoon2",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },

  keys = function()
    local harpoon = require("harpoon")
    local conf = require("telescope.config").values

    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end
      require("telescope.pickers").new({}, {
        prompt_title = "Harpoon",
        finder = require("telescope.finders").new_table({
          results = file_paths,
        }),
        previewer = conf.file_previewer({}),
        sorter = conf.generic_sorter({}),
      }):find()
    end

    return {
      {"<leader>hn", function() harpoon:list():next() end, desc ="Harpoon next buffer"},
      {"<leader>hp", function() harpoon:list():prev() end, desc ="Harpoon prev buffer"},
      {"<leader>hq", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc ="Harpoon Toggle Menu"},
      {"<leader>ha", function() harpoon:list():add() end, desc ="Harpoon add file"},
      {"<leader>ht", function() toggle_telescope(harpoon:list() )end, desc ="Open Harpoon window"},
    }
  end,

  config = function(_, opts)
    require("harpoon").setup(opts)
  end,

  -- ----------------------------------------------------------------------- }}}
}
