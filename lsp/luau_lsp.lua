---@type vim.lsp.Config
return {
	filetype = { "luau" },
  root_markers = {
    ".luaurc.json",
    ".luaurc.jsonc",
    ".luaucheckrc",
    ".stylua.toml",
		"stylua.toml",
		"selene.toml",
		"selene.yml",
    ".git",
  },
	settings = {
		Luau = {
			runtime = {
        version = "Luau",
      },
      diagnostics = {
        enable = true,
				globals = { "hs", "vim", "it", "describe", "before_each", "after_each" },
        disable =  { "lowercase-global" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("luau", true),
        maxPreload = 9999,
        preloadFileSize = 9999,
			},
			telemetry = {
				enable = false,
			},
		},
	},
}
