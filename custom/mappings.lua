---@type MappingsTable
local M = {}

M.general = {
  n = {
    -- [";"] = { ":", "enter command mode", opts = { nowait = true } },
    -- https://vi.stackexchange.com/questions/28759/how-can-i-compile-cpp-using-vim
    ["<leader>cc"] = {":<C-u>make %<<CR>", "compile", opts = { nowait = true} },
    ["<leader>cr"] = {":<C-u>!./%<<CR>", "run compiled file", opts = { nowait = true} },

  },
}

-- more keybinds!

return M
