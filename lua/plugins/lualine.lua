local plugin = {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons"
	},
	event = "VeryLazy"
}

-- Tomorrow Night copied from nvim-base16
local colors = {
	base01 = '#282a2e', base02 = '#373b41', base03 = '#969896',
	base04 = '#b4b7b4', base05 = '#c5c8c6', base09 = '#de935f',
	base0B = '#b5bd68', base0D = '#81a2be', base0E = '#b294bb'
}

-- Function copy from base16.lua in lualine
function create_theme()
  local theme = {
    normal = {
      a = { fg = colors.base01, bg = colors.base0D },
      b = { fg = colors.base05, bg = colors.base02 },
      c = { fg = colors.base04, bg = colors.base01 },
    },
    replace = {
      a = { fg = colors.base01, bg = colors.base09 },
      b = { fg = colors.base05, bg = colors.base02 },
    },
    insert = {
      a = { fg = colors.base01, bg = colors.base0B },
      b = { fg = colors.base05, bg = colors.base02 },
    },
    visual = {
      a = { fg = colors.base01, bg = colors.base0E },
      b = { fg = colors.base05, bg = colors.base02 },
    },
    inactive = {
      a = { fg = colors.base03, bg = colors.base01 },
      b = { fg = colors.base03, bg = colors.base01 },
      c = { fg = colors.base03, bg = colors.base01 },
    }
  }

  theme.command = theme.normal
  theme.terminal = theme.insert

  return theme
end

plugin.config = function()
	require("lualine").setup({
		options = {
			theme = create_theme(),
			globalstatus = true
		}
	})
end

return plugin
