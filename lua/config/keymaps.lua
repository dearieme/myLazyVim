-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set:
-- https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Add command to open a 'MarkDeep' notes file in my NOTES directory, named
-- after the current branch. Requires lualine to get the branch name
vim.api.nvim_create_user_command("OpenNotes", function()
  local branch = require("lualine.components.branch.git_branch").get_branch()
  if branch then
    local filename = "~/dev/NOTES/tickets/" .. branch .. ".md.html"
    vim.cmd("e " .. filename)
  end
end, {})

vim.keymap.set("n", "<leader>cn", vim.cmd.OpenNotes, { desc = "Open notes file for current branch" })

-- Expand directory of the file in the current buffer in command mode
vim.keymap.set("c", "%%", vim.fn.expand("%:p:h") .. "/", { desc = "Expand directory of current buffer" })
