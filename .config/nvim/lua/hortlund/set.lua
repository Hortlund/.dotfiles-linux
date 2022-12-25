vim.opt.syntax = "on"
vim.opt.nu = true 
vim.opt.clipboard = "unnamedplus"
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.autoread = true
vim.opt.ma = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
--vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.confirm = true
vim.opt.autoindent = true
--vim.opt.textwidth = 80
--vim.opt.linebreak = true
vim.opt.wrap = false
vim.opt.relativenumber = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.guicursor = ""
vim.opt.errorbells = false
vim.opt.updatetime = 50
vim.opt.termguicolors = true

vim.opt.listchars = { eol = '↵', tab = '→ ', trail = '~', space = '·', extends = '▶', precedes = '◀'  }
vim.opt.list = true

vim.opt.tags = "/Users/andreas.hortlund/Documents/git/tags"

vim.api.nvim_command('filetype plugin on')
vim.opt.colorcolumn = "100"
vim.g.mapleader = " "
