return {
  "tpope/vim-fugitive",
  lazy = false,
  enabled = true,

  keys = {
    {"<leader>gp", "<cmd>G pull<cr>"},
    {"<leader>gd", "<cmd>G diff<cr>"},
    {"<leader>gl", "<cmd>G log<cr>"},
    {"<leader>gh", "<cmd>vert bo help fugitive<cr>"},
    {"<leader>gp", "<cmd>G push<cr>"},
    {"<leader>gs", "<cmd>G<cr>"},
    {"gh", "<cmd>diffget //2<cr>"},
    {"gl", "<cmd>diffget //3<cr>"},
  },
}
