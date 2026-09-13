---@type vim.lsp.Config
return {
	cmd = { "elp", "server" },
	filetypes = { "erlang", "leex" },
	root_markers = { "rebar.config", "erlang.mk", ".git" },
	settings = {
		elp = {
			diagnostics = {
				onSave = {
					enable = true,
				},
			},
			hoverActions = {
				docLinks = {
					enable = true,
				},
				enable = true,
			},
			lens = {
				debug = {
					enable = true,
				},
				enable = true,
				links = {
					enable = true,
				},
			},
			typesOnHover = {
				enable = true,
			},
		},
	},
}
