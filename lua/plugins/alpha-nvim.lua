local plugin = {
	"goolord/alpha-nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	event = "VimEnter"
}

plugin.config = function()
	require("alpha").setup(require("alpha.themes.dashboard").config)
end

return plugin
