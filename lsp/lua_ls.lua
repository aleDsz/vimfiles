---@type vim.lsp.Config
return {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
  root_markers = {
    ".luarc.json",
    ".luarc.jsonc",
    ".luacheckrc",
    ".stylua.toml",
		"stylua.toml",
		"selene.toml",
		"selene.yml",
    ".git",
  },
  settings = {
    Lua = {
      runtime = {
        version = "LuaJIT",
      },
      diagnostics = {
        enable = true,
				globals = { "hs", "vim", "it", "describe", "before_each", "after_each" },
        disable =  { "lowercase-global" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("lua", true),
        maxPreload = 9999,
        preloadFileSize = 9999,
			},
			telemetry = {
				enable = false,
			},
    },
  },
}
