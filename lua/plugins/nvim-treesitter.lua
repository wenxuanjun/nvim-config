local plugin = {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate"
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
		}
	})
end

return plugin

