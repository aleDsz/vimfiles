---@type vim.lsp.Config
return {
	cmd = { "nil" },
	filetypes = { "nix", "flake" },
	settings = {
		["nil"] = {
			formatting = {
				command = { "alejandra" },
			},
		},
	},
}
