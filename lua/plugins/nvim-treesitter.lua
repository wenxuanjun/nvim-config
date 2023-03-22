local plugin = {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	event = "VeryLazy"
}

plugin.config = function()
	require("nvim-treesitter.configs").setup({
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
			additional_vim_regex_highlighting = false
		},
		incremental_selection = {
			enable = true,
			keymaps = {
				init_selection = '<CR>',
				node_incremental = '<CR>',
				node_decremental = '<BS>',
				scope_incremental = '<TAB>'
			}
		}
	})
end

return plugin

