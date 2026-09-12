local wk = require("which-key")

local v = vim

wk.add({
  { "<leader>f", group = "Find" }, -- grupo
  { "<leader>bb", "<cmd>Telescope buffers<cr>", desc = "Find buffer" },
  { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files cwd" },
  { "<leader>fb", "<cmd>Telescope file_browser<cr>", desc = "File browser" },
  { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Regex in cwd" },
  { "<leader>ft", "<cmd>Telescope tags<cr>", desc = "List tags in cwd" },
  { "<leader>fo", "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },
  { "<leader>fm", "<cmd>Telescope marks<cr>", desc = "Vim marks" },
  { "<leader>fj", "<cmd>Telescope jumplist<cr>", desc = "Jump list" },
  { "<leader>fq", "<cmd>Telescope quickfix<cr>", desc = "Quickfix list" },

  { "<leader>x", group = "Trouble" }, -- grupo
  { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)", },
  { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)", },
  { "<leader>xs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)", },
  { "<leader>xl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "LSP Definitions / references / ... (Trouble)", },
  { "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)", },
  { "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)", },

  { "<leader>d", group = "Diagnostic" }, -- grupo
  { "<leader>df", "<cmd>Telescope diagnostics<cr>", desc = "Find diagnostics" },
  { "<leader>do", v.diagnostic.open_float, desc = "Mostrar diagnóstico flotante" },
  { "<leader>dl", v.diagnostic.setloclist, desc = "Enviar a Location List" },
  { "<leader>dq", v.diagnostic.setqflist, desc = "Enviar a Quickfix" },
  { "<leader>dt", function()
    local current = v.diagnostic.config().virtual_text
    v.diagnostic.config({ virtual_text = not current })
  end, desc = "Toggle virtual text" },
  { "]d", function() v.diagnostic.jump({ count = 1 }) end, desc = "Siguiente diagnóstico" },
  { "[d", function() v.diagnostic.jump({ count = -1 }) end, desc = "Diagnóstico anterior" },

  { "<leader>b", group = "Buffers" }, -- grupo
  { "<leader>bd", "<cmd>bd<cr>", desc = "Close buffer", mode = "n" },
  { "<leader>ba", "<cmd>%bd|e#<cr>", desc = "Close all buffers except current", mode = "n" },
})
