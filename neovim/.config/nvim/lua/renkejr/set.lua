local g = vim.g
local o = vim.o
local opt = vim.opt

-- Terminal and editor options.
o.termguicolors = true
o.splitbelow = true
o.splitright = true
o.mouse = "a"

-- Line numbers.
o.number = true
o.relativenumber = true

-- Decrease update time.
o.timeoutlen = 500
o.updatetime = 200

-- Number of screen lines to keep.
o.scrolloff = 5

-- Tabs, spacing, wrapping, and indents.
o.autoindent = true
o.tabstop = 4
o.softtabstop = -1 -- If negative, shiftwidth value is used
o.shiftwidth = 4
o.expandtab = true
o.smarttab = true
o.colorcolumn = [[120]]
o.wrap = false
o.list = true
o.listchars = "nbsp:◇,tab:→ ,extends:▸,precedes:◂" -- "space:·"

-- Search options.
opt.hlsearch = false
opt.incsearch = true

-- Formatting.
o.formatonsave = true

-- Undo and backup options.
o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

-- Set the leader key used in the remap.lua file.
g.mapleader = " "
g.maplocalleader = " "

-- Makes neovim and host OS clipboard play nicely with each other
o.clipboard = 'unnamedplus'

-- Highlight region on yank.
vim.api.nvim_create_autocmd("TextYankPost", {
    group = num_au,
    callback = function()
        vim.highlight.on_yank({ higroup = "Visual", timeout = 120 })
    end,
})

