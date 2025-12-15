local servers = {
  "elixir-ls",
  "lua_ls",
  "luau_lsp",
  "nil_ls",
  "rust-analyzer",
  "tailwindcss",
}

for _, server in ipairs(servers) do
  local file_name = server:gsub("-", "_")
  local ok, config = pcall(require, "lsp." .. file_name)

  if ok then
    vim.lsp.config(server, config)
    vim.lsp.enable(server)
  end
end
