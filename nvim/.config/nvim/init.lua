vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.fugitive_no_mercurial = 1

require("rkchv.core.lazy")
require("rkchv.config.lazy")

vim.cmd.colorscheme(require("rkchv.core.constants").colorscheme)

require("rkchv.config.set")
require("rkchv.config.remap")
