-- lua/config/options.lua
local v = vim
local opt = v.opt


opt.makeprg = 'make' -- Comando a ejecutar
opt.errorformat = '%f:%l:%c: %m,%f:%l: %m'

-- Recuerda instalar win32yank en windows

-- Establecer el líder ANTES de cargar lazy.nvim
v.g.mapleader = " "  -- Barra espaciadora como líder
v.g.maplocalleader = ","

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

v.diagnostic.config({
  -- Muestra el mensaje de error en la misma línea (texto virtual)
  virtual_text = {
    prefix = '■', -- Símbolo al inicio del mensaje
    spacing = 4, -- Espacio entre el código y el mensaje
  },
  -- Muestra iconos en la columna de signos (a la izquierda)
  signs = true,
  -- Subraya la parte del código con problemas
  underline = true,
  -- Actualiza los diagnósticos mientras escribes en modo inserción
  update_in_insert = false,
  -- Ordena los diagnósticos por severidad (Error, Warn, Info, Hint)
  severity_sort = true,
  -- Configuración de la ventana flotante que se abre al usar `vim.diagnostic.open_float()`
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always", -- Muestra el origen del diagnóstico (ej. "clangd")
    header = "",
    prefix = "",
  },
})
