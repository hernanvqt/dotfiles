-- Bootstrap lazy.nvim
local v = vim
local lazypath = v.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (v.uv or v.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nv.git"
  local out = v.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if v.v.shell_error ~= 0 then
    v.api.nvim_echo({
      { "Failed to clone lazy.nv:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    v.fn.getchar()
    os.exit(1)
  end
end
v.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nv so that mappings are correct.
-- This is also a good place to setup other settings (v.opt)
v.g.mapleader = " "
v.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
spec = {
  -- import your plugins
  { import = "plugins" },
},
-- Configure any other settings here. See the documentation for more details.
-- automatically check for plugin updates
checker = { enabled = true },
})
