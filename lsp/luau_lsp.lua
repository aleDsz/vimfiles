local util = require("lspconfig.util")

---@type vim.lsp.Config
return {
	filetype = { "luau" },
	root_dir = util.root_pattern(".luaurc.json"),
	settings = {
		Lua = {
			runtime = {
				version = "Luau",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("luau", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
}
