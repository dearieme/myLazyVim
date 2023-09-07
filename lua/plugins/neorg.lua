return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {  -- Adds pretty icons
          config = {
            icon_preset = "diamond",
          },
        },
        ["core.dirman"] = { -- Manage workspaces
          config = {
            workspaces = {
              home = "~/notes/home",
              work = "~/notes/work",
            },
            default_workspace = "home",
          },
        },
        ["core.summary"] = {}, -- Generates a summary for the current workspace
        ["core.ui.calendar"] = {}, -- Adds calendar support
      },
    })
  end,
}
