-- lua/plugins/telescope.lua
return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "master",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        "nvim-tree/nvim-web-devicons",
        build = "make",
      },
      "nvim-telescope/telescope-file-browser.nvim",
    },
    cmd = "Telescope",  -- Carga solo al usar el comando :Telescope
    -- https://github.com/nvim-telescope/telescope.nvim#vim-pickers
    config = function ()
      local telescope = require("telescope")
      telescope.setup({
        extensions = {
          file_browser = {
            -- Aquí puedes poner tu configuración específica del file browser
            -- Por ejemplo: theme = "ivy", hijack_netrw = true
            theme = "ivy",
            -- disables netrw and use telescope-file-browser in its place
            hijack_netrw = true,
            mappings = {
              ["i"] = {
                -- your custom insert mode mappings
              },
              ["n"] = {
                -- your custom normal mode mappings
              },
            },
          },
        },
      })

      -- 2. Luego carga la extensión. Este es el paso clave que pide el README.
      telescope.load_extension("file_browser")
    end,
    keys = {
    },
    opts = {
      defaults = {
        -- Configuración global de Telescope
      },
    },
  },
}
