-- Set the path of lazy.vim
local lazy_path = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- If the path not exist then install
if not vim.loop.fs_stat(lazy_path) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazy_path,
	})
end

-- Prepare of lazy.vim
vim.opt.rtp:prepend(lazy_path)

-- Global settings of importing plugins
require("lazy").setup("plugins", {
	defaults = {
		lazy = true,
		version = false
	},
	checker = {
		enabled = true,
		notify = false,
	},
	ui = {
		border = "rounded",
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin"
			}
		}
	}
})
