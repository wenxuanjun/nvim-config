return {
	"nvim-telescope/telescope.nvim",
	dependencies = "nvim-lua/plenary.nvim",
	event = "VeryLazy",
	opts = {
		pickers = {
			colorscheme = {
				enable_preview = true,
			},
		},
	},
}
