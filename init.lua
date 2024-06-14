-- Basics
vim.opt.title = true
vim.opt.bg = 'light'
-- vim.opt.go = 'a'
vim.opt.mouse = 'a'
-- vim.opt.nohlsearch = true
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

-- Replace all is aliased to S.
vim.keymap.set('n', 'S', ':%s//g<Left><Left>')
-- Run command in terminal and output in new buffer
vim.keymap.set('', '<leader>c', ':enew | r !')
-- Toggle NERDTree with leader-n
vim.keymap.set('', '<leader>n', ':NERDTreeToggle<CR>')

require('plugins')
