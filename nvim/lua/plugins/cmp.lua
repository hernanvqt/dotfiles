return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    -- Lee le contexto de los buffer abierto y los da como fuente para el autocompletado
    "hrsh7th/cmp-buffer",
    -- Entiende el contexto donde estamos
    "hrsh7th/cmp-path",
    -- Nos da la conexion al servidor lsp (el nativo de nvim deja que desear)
    "hrsh7th/cmp-nvim-lsp",
    -- Muestra los comandos para autocompletar
    "hrsh7th/cmp-cmdline",
    -- Da contexto en relacion con git
    "hrsh7th/cmp-git",
    -- Necesitamos un motor de Snippets para usar cmp
    "L3M0N4D3/LuaSnip",
    -- La fuente en relacion con el luasnip, snippets propios
    "saadparwaiz1/cmp_luasnip",
    -- LSP a veces nos manda funciones sin cerrar el argumento y esto lo arregla
    "windwp/nvim-autopairs",
  },
  event = "VeryLazy",
  main = "config.plugins.cmp",
  config = true,
}
