return {
  "nvim-neorg/neorg",
  config = function()
    require("neorg").setup({
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = { -- Adds pretty icons
          config = {
            icon_preset = "diamond",
          },
        },
        ["core.dirman"] = {
          config = {
            workspaces = {
              home = "~/notes/home",
              work = "~/notes/work",
              cookbook = "~/notes/cookbook",
              gàidhlig = "~/gd",
            },
            default_workspace = "home",
          },
        },
        ["core.summary"] = {},
        ["core.export"] = {},
        ["core.ui.calendar"] = {},
      },
    })
  end,
}
