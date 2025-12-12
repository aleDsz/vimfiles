local util = require("lspconfig.util")

---@type vim.lsp.Config
return {
	filetype = { "lua" },
	root_dir = util.root_pattern(
    "default.project.json",
		".luarc.json",
		".luarc.jsonc",
		".luacheckrc",
		".stylua.toml",
		"stylua.toml",
		"selene.toml",
		"selene.yml"
	),
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("lua", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
}
