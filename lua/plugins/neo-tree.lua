local plugin = {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim"
	},
	event = "VeryLazy"
}

plugin.config = function()
	require("neo-tree").setup()
end

return plugin

