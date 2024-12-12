return {
  {
    "tpope/vim-surround",
    enable = true,
  },
  {
    "mg979/vim-visual-multi",
    branch = "master",
    config = function()
      vim.keymap.set("n", "<c-n>", ":call vm#commands#find_under()<CR>", { noremap = true, silent = true })
    end,
  },
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      require("nvim-autopairs").setup({})
    end,
  },
}
