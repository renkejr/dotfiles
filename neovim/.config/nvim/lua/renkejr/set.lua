-------------------------------------------------
-- Modified from DT'S NEOVIM CONFIGURATION
-- Neovim website: https://neovim.io/
-- DT's dotfiles: https://gitlab.com/dwt1/dotfiles
-------------------------------------------------

local g = vim.g
local o = vim.o
local opt = vim.opt
local A = vim.api

-- Terminal options.
o.termguicolors = true
-- o.background = 'dark'

-- Line numbers.
o.number = true
o.relativenumber = true

-- Decrease update time.
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 5

-- Tabs, spacing, and indents.
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true

-- Search options.
opt.hlsearch = false
opt.incsearch = true

opt.wrap = false

g.mapleader = " "

