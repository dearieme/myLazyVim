-- Perl perlnavigator LSP settings
--
return {
  "neovim/nvim-lspconfig",
  opts = {
    format = {
      timeout_ms = 5000,
    },
    autoformat = false,
    servers = {
      perlnavigator = {
        settings = {
          perlnavigator = {
            includeLib = true,
            includePaths = { "WCN/lib", "WCN/t/lib" },
            perlcriticEnabled = false,
            perlParams = { "-T" },
          },
        },
      },
      lua_ls = {
        settings = {
          Lua = {
            runtime = {
              unicodeName = true,
            },
          },
        },
      },
    },
  },
}
