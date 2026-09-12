return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig", -- necesario para que mason-lspconfig encuentre las configuraciones por defecto
  },
  config = function()
    require("mason").setup()
    require("mason-lspconfig").setup({
      ensure_installed = {
        "lua_ls",       -- Lua
        "clangd",       -- C/C++
        -- Añade aquí otros servidores que necesites
      },
    })
  end,
}
