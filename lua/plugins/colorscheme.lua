return {
  { "LazyVim/LazyVim", opts = { colorscheme = "catppuccin-mocha" } },
  --
  -- Temp fix for catppuccin bufferline integration
  {
    "catppuccin/nvim",
    opts = function(_, opts)
      local module = require("catppuccin.groups.integrations.bufferline")
      if module then
        module.get = module.get_theme
      end
      return opts
    end,
  },
}

