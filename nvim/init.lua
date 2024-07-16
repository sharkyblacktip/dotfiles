require("config.lazy")

-- theme
vim.cmd "colorscheme catppuccin"

-- options
vim.o.number = true
vim.o.relativenumber = true
vim.o.smartindent = true
vim.o.wrap = false
vim.o.cursorline = true
vim.o.termguicolors = true

-- plugin setup
require("gitsigns").setup()

require("lualine").setup {
	options = {theme = "auto"}
}
