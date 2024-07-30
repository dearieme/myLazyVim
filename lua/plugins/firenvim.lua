local spec = {
  "glacambre/firenvim",

  -- Lazy load firenvim
  lazy = not vim.g.started_by_firenvim,
  module = false,
  build = ":call firenvim#install(0)",
}

if vim.g.started_by_firenvim == true then -- set by the browser addon
  spec = {
    { "noice.nvim", cond = false }, -- can't work with gui having ext_cmdline
    { "lualine.nvim", cond = false }, -- not useful in the browser
    { "copilot-cmp", cond = false }, -- security: don't send all textarea contents to m$
    vim.tbl_extend("force", spec, {
      opts = {
        localSettings = {
          [".*"] = {
            -- In firefox, Manage Extension Shortcuts, configure ctrl-6,
            -- because the markdown editor on github already uses ctrl-e
            takeover = "never", -- security: activate with ctrl-e
            cmdline = "neovim", -- "firenvim"
          },
        },
      },
      config = function(_, opts)
        if type(opts) == "table" and (opts.localSettings or opts.globalSettings) then
          vim.g.firenvim_config = opts
        end
      end,
    }),
  }
end
return spec
