return {
	{
		"Saghen/blink.cmp",
		version = "*",
		dependencies = "rafamadriz/friendly-snippets",
		opts = {
			sources = {
				default = { "lsp", "path", "snippets", "buffer" },
			},
			keymap = {
				preset = "default",
				["<Tab>"] = { "accept", "fallback" },
				["<CR>"] = { "fallback" },
			},
			signature = { enabled = true },
		},
	},

	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"Saghen/blink.cmp",
		},
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("mason").setup({
				ui = { border = "rounded" },
			})

			require("mason-lspconfig").setup({
				handlers = {
					function(server_name)
						require("lspconfig")[server_name].setup({
							capabilities = require("blink.cmp").get_lsp_capabilities(),
						})
					end,
				},
			})
		end,
	},
}
