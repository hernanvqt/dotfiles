-- lua/config/options.lua
local opt = vim.opt

-- Recuerda instalar win32yank en windows

-- Establecer el líder ANTES de cargar lazy.nvim
vim.g.mapleader = " "  -- Barra espaciadora como líder
vim.g.maplocalleader = ","

-- Apariencia
opt.number = true
opt.relativenumber = true
opt.termguicolors = true
opt.signcolumn = "yes"
opt.wrap = false
opt.scrolloff = 8

-- Comportamiento
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.smartindent = true
opt.ignorecase = true
opt.smartcase = true
