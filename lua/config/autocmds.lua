-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local template_path = vim.fn.stdpath("config") .. "/templates"
local augroup = vim.api.nvim_create_augroup("markdeep", { clear = true })

vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = { "*.md.html" },
  group = augroup,
  command = "0r " .. template_path .. "/skeleton.md.html",
})

vim.api.nvim_create_autocmd("BufRead", {
  pattern = { "*.md.html" },
  group = augroup,
  command = "set filetype=markdown",
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "norg", "neorg" },
  callback = function()
    if pcall(vim.treesitter.start) then
      vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
      vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end
  end,
})
