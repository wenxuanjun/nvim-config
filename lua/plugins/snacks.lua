return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		dashboard = { enabled = true },
		scroll = { enabled = true },
		indent = { enabled = true },
		input = { enabled = true },
		select = { enabled = true },
		notifier = { enabled = true },
		words = { enabled = true },
		bigfile = { enabled = true },
		quickfile = { enabled = true },
		terminal = { enabled = true },
		explorer = { enabled = false },
		statuscolumn = { enabled = false },
	},
	keys = {
		{
			"<c-\\>",
			function() Snacks.terminal() end,
			desc = "Toggle Terminal",
			mode = { "n", "t" }
		},
	},
}
