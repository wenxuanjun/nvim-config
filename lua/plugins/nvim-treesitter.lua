return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "VeryLazy",
	main = "nvim-treesitter.configs",
	opts = {
		ensure_installed = {
			"bash",
			"c",
			"cpp",
			"css",
			"dockerfile",
			"gitignore",
			"html",
			"javascript",
			"json",
			"lua",
			"markdown",
			"python",
			"rust",
			"toml",
			"tsx",
			"typescript",
			"yaml"
		},
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = false,
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = '<CR>',
				node_incremental = '<CR>',
				node_decremental = '<BS>',
			},
		},
	},
}
