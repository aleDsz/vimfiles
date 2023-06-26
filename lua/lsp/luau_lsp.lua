-- LuaU
require("lspconfig").luau_lsp.setup({
	filetype = { "luau" },
	root_dir = require("lspconfig.util").root_pattern(".luaurc.json"),
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
			},
			diagnostics = {
				globals = { "vim" },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
})
