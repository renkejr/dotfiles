local g = vim.g
local o = vim.o
local opt = vim.opt

-- Terminal options.
o.termguicolors = true

-- Line numbers.
o.number = true
o.relativenumber = true

-- Decrease update time.
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep.
o.scrolloff = 5

-- Tabs, spacing, wrapping, and indents.
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = false

-- Search options.
opt.hlsearch = false
opt.incsearch = true

-- Set the leader key used in the remap.lua file.
g.mapleader = " "

