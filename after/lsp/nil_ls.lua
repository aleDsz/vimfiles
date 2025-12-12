---@type vim.lsp.Config
return {
  filetypes = { "nix", "flake" },
  settings = {
    ["nil"] = {
      formatting = {
        command = { "alejandra" },
      },
    },
  },
}
