vim.g.mapleader = ','

require('options')
require('plugins')
require('lsp')
require('autocomplete')
require('fexplorer')
require('statusline')
require('onedark').setup {
    style = 'warmer'
}
require('onedark').load()
