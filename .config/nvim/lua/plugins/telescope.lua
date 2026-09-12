-- lua/plugins/telescope.lua
return {
  {
    "nvim-telescope/telescope.nvim",
    branch = "master",
    dependencies = {
      "nvim-lua/plenary.nvim",
      {
        "nvim-telescope/telescope-fzf-native.nvim",
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
      { "<leader>bb", "<cmd>Telescope buffers<cr>", desc = "Buffers" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files cwd" },
      { "<leader>fb", "<cmd>Telescope file_browser<cr>", desc = "File browser" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Regex in cwd" },
      { "<leader>ft", "<cmd>Telescope tags<cr>", desc = "List tags in cwd" },
      { "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },
      { "<leader>fm", "<cmd>Telescope marks<cr>", desc = "Vim marks" },
      { "<leader>fj", "<cmd>Telescope jumplist<cr>", desc = "Jump list" },
      { "<leader>fq", "<cmd>Telescope quickfix<cr>", desc = "Quickfix list" },
    },
    opts = {
      defaults = {
        -- Configuración global de Telescope
      },
    },
  },
}
