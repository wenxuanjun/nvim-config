return {
	"Yazeed1s/minimal.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd([[colorscheme minimal-base16]])
		vim.opt.cursorline = true
		local normal_hl = vim.api.nvim_get_hl(0, { name = "Normal", link = false })
		local comment_hl = vim.api.nvim_get_hl(0, { name = "Comment", link = false })
		vim.api.nvim_set_hl(0, "SignColumn", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "CursorLine", { bg = "NONE" })
		vim.api.nvim_set_hl(0, "LineNr", { bg = "NONE", fg = comment_hl.fg })
		vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "NONE", fg = normal_hl.fg, bold = true })
	end,
}
