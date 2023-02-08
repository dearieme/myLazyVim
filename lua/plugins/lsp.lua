-- Perl perlnavigator LSP settings
--
return {
  "neovim/nvim-lspconfig",
  opts = {
    autoformat = false,
    servers = {
      perlnavigator = {
        settings = {
          perlnavigator = {
            includeLib = true,
            includePaths = { "WCN/lib", "WCN/t/lib" },
            perlcriticEnabled = false,
          },
        },
      },
    },
  },
}
