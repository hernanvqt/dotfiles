return
{
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      preset = "modern",  -- Estilo visual: "classic", "modern" o "helix"
      delay = 500,        -- Retardo (ms) antes de mostrar el popup
    },
    keys = {
      {
        "<leader>?",
        function() require("which-key").show({ global = false }) end,
        desc = "Buffer Local Keymaps (which-key)",
      },
    },

    config = function(_, opts)
      -- Primero aplicas las opciones generales (opcional si usas opts)
    local wk = require("which-key")
    wk.setup(opts)

    wk.add({
      { "<leader>f", group = "Find" }, -- grupo

      { "<leader>d", group = "Diagnostic" }, -- grupo
      { "<leader>df", "<cmd>Telescope diagnostics<cr>", desc = "Find diagnostics" },

      { "<leader>b", group = "Buffers" }, -- grupo
      { "<leader>bd", "<cmd>bd<cr>", desc = "Close buffer", mode = "n" },
      { "<leader>ba", "<cmd>%bd|e#<cr>", desc = "Close all buffers except current", mode = "n" },
    })
    end,

  },
  {
    "echasnovski/mini.icons",
    lazy = true,
    opts = {},
  },
}
