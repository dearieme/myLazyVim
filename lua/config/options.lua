-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.maplocalleader = "," -- Map local leader to comma

local opt = vim.opt

opt.mouse = "" -- Mouse gets in the way
opt.path:append("lib,t/lib") -- Help 'gf' find Perl libs
opt.relativenumber = false -- I like actual line numbers
opt.spelllang = "en_gb" -- Proper English
opt.swapfile = false -- Always have git
opt.textwidth = 79
opt.wrap = true -- Wrap not horizontal scroll
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
opt.foldnestmax = 1
