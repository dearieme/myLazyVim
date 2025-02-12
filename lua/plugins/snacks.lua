-- Add keymaps for finding/grepping files only in ./lib
return {
  "folke/snacks.nvim",
  keys = {
    { "<leader>fl", LazyVim.pick("files", { cwd = "./lib" }), desc = "Find Files (./lib only)" },
    { "<leader>sl", LazyVim.pick("live_grep", { cwd = "./lib" }), desc = "Grep (./lib only)" },
  },
}
