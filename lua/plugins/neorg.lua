return {
  "nvim-neorg/neorg",
  lazy = false,
  version = "*",
  config = true,
  dependencies = {
    "nvim-neorg/tree-sitter-norg",
    "nvim-neorg/tree-sitter-norg-meta",
  },
  opts = {
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
    },
}
