-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#sumneko_lua
local runtime_path = vim.split(package.path, ';')
table.insert(runtime_path, 'lua/?.luau')
table.insert(runtime_path, 'lua/?/init.luau')

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
        path = runtime_path,
      },
      diagnostics = {
        enable = true,
				globals = { "vim" },
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
