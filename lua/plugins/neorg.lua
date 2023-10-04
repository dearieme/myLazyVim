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
        ["core.dirman"] = {
          config = {
            workspaces = {
              home = "~/notes/home",
              work = "~/notes/work",
              cookbook = "~/notes/recipe",
              gàidhlig = "~/notes/gàidhlig",
            },
            default_workspace = "home",
          },
        },
        ["core.summary"] = {},
        -- Needs nvim 0.10+
        -- ["core.ui.calendar"] = {},
      },
    })
  end,
}
