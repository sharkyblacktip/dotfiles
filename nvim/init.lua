require("config.lazy")

-- theme
vim.cmd "colorscheme nord"

-- options
vim.o.number = true
vim.o.relativenumber = true
vim.o.smartindent = true
vim.o.wrap = false
vim.o.cursorline = true
vim.o.termguicolors = true
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = " "
vim.opt.termguicolors = true

-- plugins
require("config.lsp")
require("config.autocomplete")
require("config.plugin-startup")

-- keybinds
local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', telescope_builtin.find_files, {})
vim.keymap.set('n', '<leader>b', telescope_builtin.buffers, {})
