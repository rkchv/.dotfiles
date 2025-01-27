function Map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

Map("n", "<leader>gc", ":GoCmt<CR>")
Map("n", "<leader>at", ":GoAddTag<CR>")
Map("n", "<leader>rt", ":GoRmTag<CR>")
Map("n", "<leader>fs", ":GoFillStruct<CR>")
Map("n", "<leader>fe", ":GoIfErr<CR>")
Map("n", "<leader>fp", ":GoFixPlurals<CR>")

Map("n", "<leader>q", ":q<CR>")
-- <leader>CR>

-- Map("n", "<leader>dc", ":GoDoc<CR>")
-- Map("n", "<leader>lt", ":GoTest<CR>")
-- Map("n", "<leader>ct", ":GoTermClose<CR>")
--
--
-- Map("i", "EE", "<Esc>")

-- Map("n", "<C-h>", "<C-w>h")
-- Map("n", "<C-j>", "<C-w>j")
-- Map("n", "<C-k>", "<C-w>k")
-- Map("n", "<C-l>", "<C-w>l")

-- terminal
Map("t", "<C-h>", "<cmd>wincmd h<CR>")
Map("t", "<C-j>", "<cmd>wincmd j<CR>")
Map("t", "<C-k>", "<cmd>wincmd k<CR>")
Map("t", "<C-l>", "<cmd>wincmd l<CR>")

Map("n", "<C-Up>", ":resize -2<CR>")
Map("n", "<C-Down>", ":resize +2<CR>")
Map("n", "<C-Left>", ":vertical resize -2<CR>")
Map("n", "<C-Right>", ":vertical resize +2<CR>")

Map("t", "<C-Up>", "<cmd>resize -2<CR>")
Map("t", "<C-Down>", "<cmd>resize +2<CR>")
Map("t", "<C-Left>", "<cmd>vertical resize -2<CR>")
Map("t", "<C-Right>", "<cmd>vertical resize +2<CR>")

Map("v", "J", ":m '>+1<CR>gv=gv")
Map("v", "K", ":m '<-2<CR>gv=gv")

Map("v", "<", "<gv")
Map("v", ">", ">gv")

-- lsp
Map('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')
Map("n", "<leader>nd", ":lua vim.lsp.buf.definition()<CR>")
Map("n", "<leader>gi", ":lua vim.lsp.buf.implementation()<CR>")
Map("n", "<leader>gr", ":lua vim.lsp.buf.references()<CR>")
Map("n", "<leader>ga", ":lua vim.lsp.buf.code_action()<CR>")
Map("n", "<leader>rn", ":lua vim.lsp.buf.rename()<CR>")
Map("n", "<leader>dd", ":lua vim.lsp.buf.declaration()<CR>")
Map("n", "<leader>e", ":lua vim.diagnostic.open_float()<CR>")
Map("n", "<leader>f", ":lua vim.lsp.buf.format()<CR>")
Map("n", "K", ":lua vim.lsp.buf.hover()<CR>")

Map("n", "<C-d>", "<C-d>zz")
Map("n", "<C-u>", "<C-u>zz")
Map("n", "J", "mzJ`z")
Map("n", "n", "nzzzv")
Map("n", "N", "Nzzzv")

Map("n", "LL", ":e #<CR>")

-- Select entire buffer
-- Map("n", "vfa", "ggvGg_")

-- Save all files.
Map("n", "<F2>", "<cmd>wall<cr>")

-- Toggle [in]visible characters.
Map("n", "<leader>i", "<cmd>set list!<cr>")

-- Close all fold except the current one.
Map("n", "zv", "zMzvzz")

-- Close current fold when open. Always open next fold.
Map("n", "zj", "zcjzOzz")

-- Close current fold when open. Always open previous fold.
Map("n", "zk", "zckzOzz")

Map("n", "wk", "zckzOzz")

-- Quit
Map("n", "qq", "<cmd>qall!<cr>")
Map("n", "<leader>tt", ":tabc<CR>")
Map("n", "<leader>to", ":tabonly<CR>")
Map("n", "<leader>tl", ":tabn<CR>")
Map("n", "<leader>th", ":tabp<CR>")
Map("n", "<leader>wr", "<cmd>only<cr>")

-- Help
Map("n", "<leader>hh", "<cmd>silent vert bo help<cr>")

-- Select (charwise) the contents of the current line, excluding indentation.
Map("n", "vv", "^vg_")

-- Open Ntree
Map("n", "<leader>ff", vim.cmd.Ex)

Map("n", "<C-d>", "<C-d>zz")
Map("n", "<C-u>", "<C-u>zz")

-- New Tmux session
-- Map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Find and replace
vim.keymap.set({ "n", "v" }, "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make a current file exexutable
Map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Reload neovim config
Map("n", "<leader><leader>", function()
  vim.cmd("so")
end)

Map("v", "<leader>y", '"+y')
Map({ "n", "v" }, "<leader>d", [["_d]])
Map({ "v" }, "<leader>p", [["_dP]])

-- ################################### --

-- Keys disabling
Map("n", "q", "<nop>")
Map("n", "<F1>", "<nop>")
Map("n", "<F3>", "<nop>")
Map("n", "<C-[", "<nop>")

-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
