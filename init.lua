-- Basics
vim.opt.title = true
vim.opt.bg = 'light'
-- vim.opt.go = 'a'
vim.opt.mouse = 'a'
vim.opt.hlsearch = false
vim.opt.clipboard:append { 'unnamedplus' }
vim.opt.showmode = false
vim.opt.ruler = false
vim.opt.laststatus = 0
vim.opt.showcmd = false
vim.g.mapleader=","
vim.keymap.set('n', 'c', '"_c')
vim.optnocompatible = true
vim.opt.encoding = "utf-8"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.showmatch = true
vim.opt.wildmode = 'longest,list,full'
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.background = 'dark'
-- Shortcutting split navigation, saving a keypress:
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')
-- Switch between buffers
vim.keymap.set('n', '<C-J>', ':bnext<CR>')
vim.keymap.set('n', '<C-K>', ':bprev<CR>')
-- Close current buffer
vim.keymap.set('n', '<C-D>', ':bd!<CR>')
-- Replace ex mode with gq
vim.keymap.set('n', 'Q', 'gq')
-- Edit the main config file
vim.keymap.set('n', '<leader>ec', ':edit /Users/mdilyan/.config/nvim/init.lua<CR>')
vim.keymap.set('n', '<leader>ecd', ':edit /Users/mdilyan/.config/nvim/<CR>')
vim.keymap.set('n', '<leader>lc', ':luafile %<CR>')

-- terminal mode to normal mode
vim.keymap.set('t','<leader><Esc>', ':<C-\\><C-n>')
vim.keymap.set('n','<leader>tv', ':vsplit term://zsh<CR>')
vim.keymap.set('n','<leader>ts', ':split term://zsh<CR>')
vim.keymap.set('n','<leader>tb', ':enew | term<CR>')
-- Replace all is aliased to S.
vim.keymap.set('n', 'S', ':%s//g<Left><Left>')
-- Run command in terminal and output in new buffer
vim.keymap.set('', '<leader>c', ':enew | r !')
-- Toggle NERDTree with leader-n
vim.keymap.set('', '<leader>n', ':NERDTreeToggle<CR>')
vim.keymap.set('', '<leader>fn', ':NERDTreeFind<CR>')
-- Disable comment on newline
vim.cmd('autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o')

-- Save file as sudo on files that require root permission
vim.cmd("cabbrev w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!")

-- Automatically deletes all trailing whitespace and newlines at end of file on save. & reset cursor position
vim.cmd('autocmd BufWritePre * let currPos = getpos(".")')
vim.cmd('autocmd BufWritePre * %s/\\s\\+$//e')
vim.cmd('autocmd BufWritePre * %s/\\n\\+\\%$//e')
vim.cmd('autocmd BufWritePre *.[ch] %s/\\%$/\r/e') -- add trailing newline for ANSI C standard
vim.cmd('autocmd BufWritePre * cal cursor(currPos[1], currPos[2])')

require('plugins')
vim.cmd('colorscheme solarized8')
