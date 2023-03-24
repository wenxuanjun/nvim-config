-- Enable highlight on search
vim.o.hlsearch = true

-- Use swapfiles
vim.o.swapfile = true

-- Save undo history
vim.o.undolevels = 1000

-- Decrease redraw time
vim.o.redrawtime = 100

-- Configure the number of spaces a tab is counting for
vim.o.tabstop = 4

-- Number of spaces for a step of indent
vim.o.shiftwidth = 4

-- Use ripgrep as grep tool
vim.o.grepprg = "rg --vimgrep --no-heading"
vim.o.grepformat = "%f:%l:%c:%m,%f:%l:%m"
