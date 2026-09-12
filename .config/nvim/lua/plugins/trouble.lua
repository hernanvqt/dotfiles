return
{
{
  "folke/trouble.nvim",
  opts = {}, -- for default options, refer to the configuration section for custom setup.
  cmd = "Trouble",
  keys = {
  },
  modes = {
    test = {
      mode = "diagnostics",
      preview = {
        type = "split",
        relative = "win",
        position = "right",
        size = 0.3,
      },
    },
  },
},
{
  "sontungexpt/better-diagnostic-virtual-text",
  event = "LspAttach", -- Carga el plugin cuando el LSP se active
  config = function()
    local diagnostic = require("better-diagnostic-virtual-text")
    diagnostic.setup({
      ui = {
        wrap_line_after = 150, -- Envuelve el texto después de esta longitud
        left_kept_space = 3,   -- Espacio a la izquierda del texto virtual
        right_kept_space = 3,  -- Espacio a la derecha del texto virtual
        --arrow = "  ",          -- Icono de flecha para diagnósticos
        --up_arrow = "  ",
        --down_arrow = "  ",
        above = false,         -- Si es `true`, muestra el texto arriba de la línea
      },
      priority = 10000,        -- Prioridad de los virtual text
      inline = true,           -- Muestra los diagnósticos en la misma línea
    })
  end,
}
}
