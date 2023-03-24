local plugin = {
	"folke/which-key.nvim",
	event = "VeryLazy"
}

plugin.config = function()
	require("which-key").setup()
end

return plugin
