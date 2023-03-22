local plugin = {
	"github/copilot.vim",
	event = "VeryLazy"
}

plugin.config = function()
	vim.g.copilot_filetypes = {
		["*"] = false,
		bash = true,
		c = true,
		cpp = true,
		go = true,
		html = true,
		javascript = true,
		javascriptreact = true,
		json = true,
		lua = true,
		python = true,
		rust = true,
		sh = true,
		toml = true,
		typescript = true,
		typescriptreact = true,
		vim = true,
		yaml = true
	}
end

return plugin
