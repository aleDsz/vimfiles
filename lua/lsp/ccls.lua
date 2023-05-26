-- C/C++
require("lspconfig").clangd.setup({
	filetypes = { "c", "cpp", "objc", "objcpp" },
	init_options = {
		index = { threads = 12 },
		clang = { excludeArgs = { "-frounding-math" } },
		cache = { directory = ".ccls-cache" },
		client = { snippetSupport = true },
		compilationDatabaseDirectory = "build",
	},
})
