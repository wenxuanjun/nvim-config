local plugin = {
	"Yazeed1s/minimal.nvim",
	event = "VeryLazy"
}

plugin.config = function()
	vim.cmd([[colorscheme minimal-base16]])
end

return plugin
