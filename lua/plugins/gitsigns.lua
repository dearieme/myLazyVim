-- Tweak gitsigns.nvim to navigate hunks across all hunks in the buffer, not
-- just the current file.

return {
  {
    "lewis6991/gitsigns.nvim",
    opts = function(_, opts)
      local attach = opts.on_attach
      opts.on_attach = function(buf)
        attach(buf)
        vim.keymap.set("n", "]h", function()
          require("gitsigns").nav_hunk("next", { target = "all" })
        end, { buffer = buf, desc = "Next Hunk" })
        vim.keymap.set("n", "[h", function()
          require("gitsigns").nav_hunk("prev", { target = "all" })
        end, { buffer = buf, desc = "Previous Hunk" })
      end
    end,
  },
}
