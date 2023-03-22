local plugin = {
	"akinsho/bufferline.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	event = "VeryLazy"
}

plugin.config = function()
	require("bufferline").setup()
end

return plugin
