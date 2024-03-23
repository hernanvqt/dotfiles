-- CMake
vim.keymap.set('n', '<leader>mg', ':CMakeGenerate<CR>', { desc = "Generate make system"})
vim.keymap.set('n', '<leader>mm', ':CMakeBuild<CR>', { desc = "Build targets"})
vim.keymap.set('n', '<leader>mr', ':CMakeRun<CR>', { desc = "Run targets"})

-- Compile single file
vim.keymap.set('n', '<leader>nn', ':!g++ -Wall --std=c++20 -o main % && ./main <CR>', { desc = "Close quickfix"})


-- Clangd-format
vim.keymap.set('n', '<leader>F', ':%!clang-format -style=file:/home/hernanvq/dotfiles/clangFormat.txt % <CR>', { desc = "Format current buffer"})
