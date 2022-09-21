vim.g.mapleader = " "
vim.opt.title = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true

vim.opt.smarttab = true
vim.opt.breakindent = true

vim.opt.scrolloff = 10

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.wrap = false
vim.opt.hlsearch = false

vim.opt.shell = 'fish'

-- More space for displaying messages
vim.opt.cmdheight = 1

-- Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
-- delays and poor user experience.
vim.opt.updatetime = 50

-- Disable various builtin plugins in Vim that bog down speed
vim.g.loaded = 1
vim.g.loaded_netrwPlugin = 1
