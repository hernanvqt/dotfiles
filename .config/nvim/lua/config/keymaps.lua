local wk = require("which-key")

wk.add({
  { "<leader>m", group = "Compile"},
  { "<leader>g", ":CMakeGenerate<CR>", desc = "Generate make system" },
  { "<leader>m", ":CMakeBuild<CR>"   , desc = "Build targets" },
  { "<leader>r", ":CMakeRun<CR>"     , desc = "Run targets"},

  { "<leader>q", group = "Quickfix"},
  { "<leader>qq", ":cclose<CR>", desc = "Close quickfix"},

  { "<leader>n", group = "Compile single"},
  { "<leader>n", ":!g++ -Wall --std=c++20 -o main % && ./main <CR>", desc = "Compile single file"},
})

wk.add({
  {"<leader>g", group = "Git" },
  {"<leader>d", group = "Diagnostic" },
  {"<leader>w", group = "Workspace" },
  {"<leader>b", group = "Buffer" },
  {"<leader>f", group = "Find" },
})

vim.keymap.set('n', '<leader>F', ':%!clang-format -style=file:/home/hernanvq/dotfiles/clangFormat.txt % <CR>', { desc = "Format current buffer"})

