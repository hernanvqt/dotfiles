return
{
  {
    "sainnhe/sonokai",
    dependencies =
    {
      "sheerun/vim-polyglot"
    },
    priority = 1000 ,
    config = function()
      vim.cmd.colorscheme("sonokai")
    end,
  },
  --{
    --"ellisonleao/gruvbox.nvim",
  --}
}

