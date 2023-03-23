local plugin = {
	"Yazeed1s/minimal.nvim",
	lazy = false
}

plugin.config = function()
	vim.cmd([[colorscheme minimal-base16]])
end

return plugin
