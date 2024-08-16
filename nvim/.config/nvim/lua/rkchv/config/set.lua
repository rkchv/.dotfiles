vim.opt.guicursor = "n-v-c:block"
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.numberwidth = 3
vim.opt.relativenumber = true
vim.opt.signcolumn = "yes"
vim.opt.textwidth = 80
vim.opt.colorcolumn = "80"
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
vim.opt.smartindent = true
vim.opt.breakindent = true
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.cmdheight = 0
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.showmode = false
vim.opt.showmatch = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.isfname:append("@-@")
vim.opt.nrformats = { "alpha", "octal", "hex" }
vim.opt.shortmess = "aToIOWAF"
vim.opt.showbreak = "↪"
vim.opt.complete = { ".", "w", "b", "u", "t", "i", "kspell" }
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.fillchars = { foldclose = " ", fold = " ", eob = " " }
vim.opt.foldlevel = 0
vim.opt.foldmethod = "marker"
vim.opt.inccommand = "split"
vim.opt.wildmode = { "list", "longest" }
vim.opt.list = false
vim.opt.listchars = { eol = "↲", tab = "▸ ", trail = "·" }
vim.opt.virtualedit = { "block" }
vim.opt.clipboard = "unnamed,unnamedplus"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.mouse = "a"

vim.opt.hidden = true
vim.opt.autoread = true
vim.opt.autowrite = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undo/"

vim.opt.timeout = true
vim.opt.timeoutlen = 200
vim.opt.ttimeout = true
vim.opt.ttimeoutlen = 5
vim.opt.updatetime = 50
