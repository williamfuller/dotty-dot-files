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
	style = 'storm',
})
theme.load()

if vim.g.neovide then
 	vim.g.neovide_cursor_animation_length = 0
  vim.g.neovide_scroll_animation_length = 0.07
  vim.g.neovide_background_color = "#0E0E27" 	
	vim.o.guifont = "Cascadia Code:h10"
end
