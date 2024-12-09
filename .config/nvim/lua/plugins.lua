local vim = vim
local Plug = vim.fn['plug#']

vim.call('plug#begin')

Plug('neovim/nvim-lspconfig')

Plug('nvim-lua/plenary.nvim')

Plug('nvim-treesitter/nvim-treesitter')

Plug('nvim-telescope/telescope.nvim', { ['tag'] = '0.1.5' })

Plug('hrsh7th/nvim-cmp')

Plug('hrsh7th/cmp-nvim-lsp')

Plug('saadparwaiz1/cmp_luasnip')

Plug('L3MON4D3/LuaSnip') 

Plug('lewis6991/gitsigns.nvim')

Plug('prettier/vim-prettier', { ['do'] = 'yarn install --frozen-lockfile --production', ['for'] = {'javascript', 'typescript', 'css', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'} })

Plug('lukas-reineke/indent-blankline.nvim')

Plug('folke/tokyonight.nvim')

Plug('nvim-telescope/telescope-fzf-native.nvim', { ['do'] = 'make' })

Plug('stevearc/oil.nvim')

Plug('elixir-editors/vim-elixir')

vim.call('plug#end')

-- simple config plugins
require('gitsigns').setup({
	signs = {
		add          = { text = '+'},
    		change       = { text = '│' },
		delete       = { text = '_' },
		topdelete    = { text = '‾' },
		changedelete = { text = '~' },
		untracked    = { text = '┆' },
  },
  current_line_blame = true,
  current_line_blame_opts = {
    virt_text = true,
    virt_text_pos = 'eol', 
    delay = 500,
    ignore_whitespace = false,
    virt_text_priority = 100,
  },
})

require('nvim-treesitter').setup({
	ensure_installed = {"elixir"},
	highlight = {enable = true},
})

require('ibl').setup()
require('oil').setup()
