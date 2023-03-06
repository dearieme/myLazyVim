-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local template_path = vim.fn.stdpath("config") .. "/templates"
local augroup = vim.api.nvim_create_augroup('templates', {clear = true})

vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = {"*.md.html"},
  group = augroup,
  command = "0r " .. template_path .. "/skeleton.md.html",
})

vim.api.nvim_create_autocmd("BufRead", {
  pattern = {"*.md.html"},
  group = augroup,
  command = "set filetype=markdown",
})
