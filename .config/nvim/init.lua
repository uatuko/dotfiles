-- ~/.config/nvim/init.lua
--

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Basics
vim.opt.ignorecase = true
vim.opt.mouse = 'a'
vim.opt.number = true
vim.opt.smartcase = true
vim.opt.smarttab = true
vim.opt.termguicolors = true

-- Adjust tab width
vim.opt.ts = 4
vim.opt.sw = 4

-- Display special characters
vim.opt.list = true
vim.opt.listchars:append 'tab:→ '
vim.opt.listchars:append 'space:⋅'
vim.opt.listchars:append 'eol:↲'

vim.opt.showbreak = '↪ '

-- TODO: https://github.com/wbthomason/packer.nvim#bootstrapping
require('plugins')
