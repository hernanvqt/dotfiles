local wk = require("which-key")

wk.register({
  m = {
    name = "Compile", -- optional group name
    g = { ":CMakeGenerate<CR>", "Generate make system" },
    m = { ":CMakeBuild<CR>", "Build targets" },
    r = { ":CMakeRun<CR>" , "Run targets"},
  },

  q = {
    name = "Quickfix",
    q = {":cclose<CR>", "Close quickfix"},
  },

  n = {
    name = "Compile single",
    n = {":!g++ -Wall --std=c++20 -o main % && ./main <CR>", "Compile single file"},
  },
}, { prefix = "<leader>" })

wk.register({
  ["<leader>"] = {
    g = { name = "Git" },
    d = { name =  "Diagnostic" },
    w = { name =  "Workspace" },
    b = { name = "Buffer" },
    f = { name = "Find " },
  }
})

vim.keymap.set('n', '<leader>F', ':%!clang-format -style=file:/home/hernanvq/dotfiles/clangFormat.txt % <CR>', { desc = "Format current buffer"})

