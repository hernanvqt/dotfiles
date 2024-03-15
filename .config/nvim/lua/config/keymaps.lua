-- CMake
vim.keymap.set('n', '<leader>mg', ':CMakeGenerate<CR>', { desc = "Generate make system"})
vim.keymap.set('n', '<leader>mm', ':CMakeBuild<CR>', { desc = "Build targets"})
vim.keymap.set('n', '<leader>mr', ':CMakeRun<CR>', { desc = "Run targets"})


-- Buffers
vim.keymap.set('n', '<leader>bd', ':bd <CR>', { desc = "Unload buffer (no changes)"})
vim.keymap.set('n', '<leader>bdy', ':bw <CR>', { desc = "Force unload buffer"})
