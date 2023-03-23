local plugin = {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim"
	},
	event = "VeryLazy"
}

plugin.config = function()
	require("telescope").setup({
		pickers = {
			colorscheme = {
				enable_preview = true
			}
		}
	})
end

return plugin
