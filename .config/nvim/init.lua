vim.g.mapleader = ','
vim.cmd('colorscheme slate')

require('options')
require('plugins')
require('lsp')
require('autocomplete')
require('fexplorer')
require('statusline')

-- colortheme
local theme = require('tokyonight')

theme.setup({
	transparent = true,
})
theme.load()
