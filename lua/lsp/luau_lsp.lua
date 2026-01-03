---@type vim.lsp.Config
return {
	cmd = { "luau-lsp" },
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
				path = {
					"?.lua",
					"?/init.lua",
				},
			},
			diagnostics = {
				enable = true,
				globals = { "vim" },
				disable = { "lowercase-global" },
			},
			workspace = {
				library = {
					vim.api.nvim_get_runtime_file("luau", true),
					vim.fn.expand("$VIMRUNTIME/lua"),
					vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
					vim.fn.stdpath("data") .. "/lazy/ui/nvchad_types",
					vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
				},
				maxPreload = 9999,
				preloadFileSize = 9999,
			},
			telemetry = {
				enable = false,
			},
		},
	},
}
