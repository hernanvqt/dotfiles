return
{
	{
		"chrisgrieser/nvim-origami",
		event = "VeryLazy",
		opts = {}, -- required even when using default config

		-- recommended: disable vim's auto-folding
		init = function()
			vim.opt.foldlevel = 99
			vim.opt.foldlevelstart = 99
		end,
	},
	{
		'yaocccc/nvim-foldsign',
		event = 'CursorHold',
		config = function()
			require('nvim-foldsign').setup({
					offset = -2,
					foldsigns = {
						open = '-',          -- mark the beginning of a fold
						close = '+',         -- show a closed fold
						seps = { '│', '┃' }, -- open fold middle marker
					},
					enabled = true,
				})
		end,
	},
}
