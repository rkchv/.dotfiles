vim.keymap.set("n", "LL", ":e #<CR>", { noremap = true, silent = true })

-- Select entire buffer
vim.keymap.set("n", "vaa", "ggvGg_")

-- Save all files.
vim.keymap.set("n", "<F2>", "<cmd>wall<cr>")

-- Toggle [in]visible characters.
vim.keymap.set("n", "<leader>i", "<cmd>set list!<cr>")

-- Stay in indent mode.
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Obfuscate
vim.keymap.set("n", "<f3>", "mmggg?G`m")

-- Close all fold except the current one.
vim.keymap.set("n", "zv", "zMzvzz")

-- Close current fold when open. Always open next fold.
vim.keymap.set("n", "zj", "zcjzOzz")

-- Close current fold when open. Always open previous fold.
vim.keymap.set("n", "zk", "zckzOzz")

-- zo (open fold)
-- zc (close fold)
-- za (toggle fold)
-- zR (open all folds)
-- zM (close all folds)

-- Quit
vim.keymap.set("n", "qq", "<cmd>qall!<cr>")
vim.keymap.set("n", "<leader>tt", ":tabc<CR>")
vim.keymap.set("n", "<leader>to", ":tabonly<CR>")
vim.keymap.set("n", "<leader>tl", ":tabn<CR>")
vim.keymap.set("n", "<leader>th", ":tabp<CR>")
vim.keymap.set("n", "<leader>wr", "<cmd>only<cr>")

-- Help
vim.keymap.set("n", "<leader>hh", "<cmd>silent vert bo help<cr>")

-- Linewise reselection of what you just pasted.
vim.keymap.set("n", "<leader>VV", "V`]")

-- Remove Windoz line ending.
vim.keymap.set("n", "<leader>wr", [[mz<cmd>%s/\r//g<cr><cmd>let @/=''<cr>`z]])

-- Convert tab to 2 spaces.
vim.keymap.set("n", "<leader>wt", [[mz<cmd>%s/\t/  /g<cr><cmd>let @/=''<cr>`z]])

-- Remove line end trailing white space.
vim.keymap.set("n", "<leader>ww", [[mz<cmd>%s//\\s\\+$////<cr><cmd>let @/=''<cr>`z]])

-- Delete empty lines.
vim.api.nvim_set_keymap("n", "<leader>wl", "<cmd>g/^\\s*$/d<CR>", { noremap = true, silent = true })

-- Select (charwise) the contents of the current line, excluding indentation.
vim.keymap.set("n", "vv", "^vg_")

-- Open Ntree
vim.keymap.set("n", "<leader>ff", vim.cmd.Ex)

-- Move line up/down
vim.keymap.set('n', 'K', ':m .-2<CR>==')
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'J', ':m .+1<CR>==')
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")

-- Lines joining
vim.keymap.set("n", "J", "mzJ`z")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keys disabling
vim.keymap.set("n", "Q", "<nop>")

-- New Tmux session
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Formatting using LSP
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Find and replace
vim.keymap.set({"n", "v"}, "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make a current file exexutable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Reload neovim config
vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)

-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
vim.keymap.set({"v"}, "<leader>p", [["_dP]])
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
