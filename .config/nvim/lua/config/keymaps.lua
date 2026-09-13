local wk = require("which-key")

local v = vim

wk.add({
  { "<leader>?", "<cmd>Cheatsheet<cr>", desc = "Cheatsheet" },
  -- Telescope
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

  -- Trouble
  { "<leader>x", group = "Trouble" }, -- grupo
  { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)", },
  { "<leader>xX", "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer Diagnostics (Trouble)", },
  { "<leader>xs", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)", },
  { "<leader>xl", "<cmd>Trouble lsp toggle focus=false win.position=right<cr>", desc = "LSP Definitions / references / ... (Trouble)", },
  { "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)", },
  { "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)", },

  -- Diagnostics
  { "<leader>d", group = "Diagnostic" }, -- grupo
  { "<leader>df", "<cmd>Telescope diagnostics<cr>", desc = "Find diagnostics" },
  { "<leader>do", v.diagnostic.open_float, desc = "Show in float window" },
  { "<leader>dl", v.diagnostic.setloclist, desc = "add to Location List" },
  { "<leader>dq", v.diagnostic.setqflist, desc = "add to Quickfix" },
  { "<leader>dt", function()
    local current = v.diagnostic.config().virtual_text
    v.diagnostic.config({ virtual_text = not current })
  end, desc = "Toggle virtual text" },
  { "]d", function() v.diagnostic.jump({ count = 1 }) end, desc = "Next diagnostic" },
  { "[d", function() v.diagnostic.jump({ count = -1 }) end, desc = "Previous diagnostic" },

  -- Buffers
  { "<leader>b", group = "Buffers" }, -- grupo
  { "<leader>bd", "<cmd>bd<cr>", desc = "Close buffer", mode = "n" },
  { "<leader>ba", "<cmd>%bd|e#<cr>", desc = "Close all except current", mode = "n" },

  -- Location List
  { "<leader>l", group = "Location List" },
  { "<leader>lo", "<cmd>lopen<cr>", desc = "Open Location List" },
  { "<leader>lc", "<cmd>lclose<cr>", desc = "Close Location List" },
  --{ "<leader>ln", "<cmd>lnext<cr>", desc = "Next item" },
  --{ "<leader>lp", "<cmd>lprevious<cr>", desc = "Previous item" },
  { "<leader>lf", "<cmd>Lfilter ", desc = "Filtrar Location List" },

  -- Quickfix
  { "<leader>q", group = "Quickfix" },
  { "<leader>qo", "<cmd>copen<cr>", desc = "Open quickfix List" },
  { "<leader>qc", "<cmd>cclose<cr>", desc = "Close quickfix List" },
  --{ "<leader>ln", "<cmd>lnext<cr>", desc = "Next item" },
  --{ "<leader>lp", "<cmd>lprevious<cr>", desc = "Previous item" },

  -- Proyects 
  --{ "<leader>m", group = "Marks" }, -- grupo
  -- Grupo run
  { "<leader>r", group = "Build, Run" },
  { "<leader>rr", ":Switchboard overlay run<CR>",   desc = "Run", silent = true },
  { "<leader>rq", ":Switchboard quickfix build<CR>", desc = "Build", silent = true },
  --{ "<leader>r]", ":Switchboard vsplit run<CR>",    desc = "Vsplit",  silent = true },
  --{ "<leader>r[", ":Switchboard split run<CR>",     desc = "Split",   silent = true },
  -- Grupo debug
  --{ "<leader>d", group = "Debug" },
  --{ "<leader>dd", ":Switchboard overlay debug<CR>",      desc = "Overlay",    silent = true },
  --{ "<leader>db", ":Switchboard background debug<CR>",   desc = "Background", silent = true },

  -- Terminal
  { "<leader>t", group = "Terminal" },
  { "<leader>tr", function () require("runner-nvim").runLast() end, desc = "Run last cmd" },
  { "<leader>ty", function () require("runner-nvim").run() end, desc = "Run cmd" },
  { "<leader>tt", function () require("runner-nvim").toggle() end, desc = "Toggle terminal"},


  { "<leader>n", group = "Tips" },
  { "<leader>nto", ":NeovimTips<CR>", desc = "Neovim tips" },
  { "<leader>ntb", ":NeovimTipsBookmarks<CR>", desc = "Bookmarked tips" },
  { "<leader>ntr", ":NeovimTipsRandom<CR>", desc = "Show random tip" },
})
