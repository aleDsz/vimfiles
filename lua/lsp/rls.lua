-- Rust
require("lspconfig").rls.setup({
	settings = {
		rust = {
			unstable_features = true,
			build_on_save = false,
			all_features = true,
		},
	},
})
