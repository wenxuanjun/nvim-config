return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	event = "VeryLazy",
	opts = {
		options = {
			offsets = {{
				filetype = "neo-tree",
				text = "File Explorer",
				highlight = "Directory",
				separator = true,
			}},
			show_close_icon = true,
			show_buffer_close_icons = true,
		},
	},
}
