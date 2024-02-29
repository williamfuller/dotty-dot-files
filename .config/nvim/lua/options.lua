-- highlights
vim.cmd('highlight SignColumn ctermfg=NONE ctermbg=NONE')

-- Hint: use `:h <option>` to figure out the meaning if needed
vim.opt.clipboard = 'unnamedplus'   -- use system clipboard 
vim.opt.mouse = 'a'                 -- allow the mouse to be used in Nvim

-- UI config
vim.opt.number = true               -- show absolute number
vim.opt.signcolumn = 'yes'
vim.opt.laststatus = 2
vim.opt.showmode = false

-- Searching
vim.opt.incsearch = true            -- search as characters are entered
vim.opt.ignorecase = true           -- ignore case in searches by default
vim.opt.smartcase = true            -- but make it case sensitive if an uppercase is entered
