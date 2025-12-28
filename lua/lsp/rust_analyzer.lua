---@type vim.lsp.Config
return {
  cmd = { "rust-analyzer" },
  root_markers = { "Cargo.toml", ".git" },
  filetypes = { "rust", },
  settings = {
    ["rust-analyzer"] = {
      checkOnSave = true,
      imports = {
        granularity = {
          group = "module",
        },
        prefix = "self",
      },
      cargo = {
        buildScripts = {
          enable = true,
        },
      },
      procMacro = {
        enable = true
      },
    },
  },
}
