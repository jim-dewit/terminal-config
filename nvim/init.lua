-- Load Neovim ----------------------------
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-------------------------------------------
-- Common settings ------------------------
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.background = "light"
vim.opt.swapfile = false
--------------------------------------------


-- Keymaps -------------------------------------
-- Navigate vim panes better
vim.keymap.set('n', '<C-Down>', ':wincmd k<CR>')
vim.keymap.set('n', '<C-Up>', ':wincmd j<CR>')
vim.keymap.set('n', '<C-Left>', ':wincmd h<CR>')
vim.keymap.set('n', '<C-Right>', ':wincmd l<CR>')
-- Yank me
vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]])
-- Misc
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')


vim.wo.number = true


require("lazy").setup("plugins")
require('mini.comment').setup()

