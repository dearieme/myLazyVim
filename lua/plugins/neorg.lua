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
              gàidhlig = "~/Documents/gd"
            },
            default_workspace = "gàidhlig",
          },
        },
        ["core.summary"] = {},
        ["core.export"] = {},
        ["core.ui.calendar"] = {},
      },
    },
}
