-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.mouse = "" -- Mouse gets in the way
opt.path:append("lib,t/lib") -- Help 'gf' find Perl libs
opt.relativenumber = false -- I like actual line numbers
opt.spelllang = "en_GB" -- Proper English
opt.swapfile = false -- Always have git
opt.textwidth = 79
opt.wrap = true -- Wrap not horizontal scroll
