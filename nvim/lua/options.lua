local f = vim.fn
local g = vim.g
local o = vim.opt

o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.autoindent = true
o.smartindent = true
o.relativenumber = true
o.number = true
o.hlsearch = true
o.hidden = true
o.errorbells = true
o.smartcase = true
o.swapfile = false
o.backup = false
o.undofile = true
o.incsearch = true
o.scrolloff = 4
o.signcolumn = "yes"
o.encoding = "utf-8"
o.inccommand = "split"
o.completeopt = "menu,menuone,noselect"
o.termguicolors = true
o.showmode = false
o.modeline = true
o.laststatus = 3
o.mouse = ""
o.guicursor = ""
o.linebreak = true
o.breakindent = true
o.showbreak = ">>"
o.breakindentopt = "shift:0"

g.netrw_banner = 0
g.loaded_ruby_provider = 0
g.loaded_node_provider = 0
g.loaded_perl_provider = 0

vim.cmd("language en_US.UTF-8")
