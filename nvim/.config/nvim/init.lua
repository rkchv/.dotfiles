vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25
vim.g.loaded_ruby_provider = 0
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0

require("rkchv.core.lazy")
require("rkchv.config.lazy")
require("rkchv.config.set")
require("rkchv.config.remap")
require("rkchv.config.autocmd")
require("rkchv.config.filetype")
