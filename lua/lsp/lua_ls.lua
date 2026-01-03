---@type vim.lsp.Config
return {
	cmd = { "lua-language-server" },
	filetypes = { "lua" },
	root_markers = {
		".luarc.json",
		".luarc.jsonc",
		".luacheckrc",
		".stylua.toml",
		"stylua.toml",
		"selene.toml",
		"selene.yml",
		".git",
	},
	settings = {
		Lua = {
			runtime = {
				version = "LuaJIT",
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
					"?.lua",
					"?/init.lua",
					[vim.fn.expand("$VIMRUNTIME/lua")] = true,
					[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
					[vim.fn.stdpath("data") .. "/lazy/ui/nvchad_types"] = true,
					[vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy"] = true,
				},
				maxPreload = 9999,
				preloadFileSize = 9999,
			},
			telemetry = {
				enable = false,
			},
			format = {
				enable = false,
				defaultConfig = {
					indent_style = "space",
					indent_size = "2",
				},
			},
		},
	},
	on_attach = function(client, bufnr)
		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = bufnr,
			callback = function()
				vim.cmd("silent !stylua " .. vim.fn.expand("%"))
				vim.cmd("edit!")
			end,
		})
	end,
}
