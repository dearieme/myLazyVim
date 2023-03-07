-- Add keymaps for finding/grepping files only in ./lib
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>fl",
      function()
        require("telescope.builtin").find_files({ cwd = "./lib" })
      end,
      desc = "Find files (./lib only)",
    },
    {
      "<leader>sl",
      function()
        require("telescope.builtin").live_grep({ cwd = "./lib" })
      end,
      desc = "Grep (./lib only)",
    },
  },
}
