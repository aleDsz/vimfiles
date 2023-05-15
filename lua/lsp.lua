require('mason').setup {}
require('mason-lspconfig').setup { automatic_installation = true }

local lspconfig = require('lspconfig')

-- The nvim-cmp almost supports LSP's capabilities so
-- You should advertise it to LSP servers..
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- `on_attach` callback will be called after a language server
-- instance has been attached to an open buffer with matching filetype
-- here we're setting key mappings for hover documentation, goto definitions, goto references, etc
-- you may set those key mappings based on your own preference
local on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true }
	local kmap = vim.api.nvim_buf_set_keymap

	kmap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
	kmap(bufnr, 'n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
	kmap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
	kmap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
	kmap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
	kmap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
	kmap(bufnr, 'n', '<leader>cf', '<cmd>lua vim.lsp.buf.format()<CR>', opts)
end

-- ASM
lspconfig.asm_lsp.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- Bash
lspconfig.bashls.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- C/C++
lspconfig.ccls.setup {
	capabilities = capabilities,
	cmd = { 'ccls' },
	filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
	init_options = {
		index = { threads = 12 },
		clang = { excludeArgs = { '-frounding-math' } },
		cache = { directory = '.ccls-cache' },
		client = { snippetSupport = true },
		compilationDatabaseDirectory = 'build'
	},
	on_load = on_load,
}

-- C#
lspconfig.csharp_ls.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- CMake
lspconfig.cmake.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- Crystal
lspconfig.crystalline.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- CSS
lspconfig.cssls.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- CSS Modules
lspconfig.cssmodules_ls.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- D
lspconfig.serve_d.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- Dockerfile
lspconfig.dockerls.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- Docker Compose
lspconfig.docker_compose_language_service.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- Elixir
lspconfig.elixirls.setup {
	capabilities = capabilities,
	cmd = { '/home/aledsz/.elixir-ls/language_server.sh' },
	on_attach = on_attach,
	settings = {
		elixirLS = {
			dialyzerEnabled = true,
			mixEnv = "test",
			mixTarget = "test",
			suggestSpecs = true,
		},
	},
}

-- Erlang
-- TODO: Make it work
-- lspconfig.erlangls.setup {}

-- Eslint
lspconfig.eslint.setup {
	capabilities = capabilities,
	on_attach = function(client, bufnr)
		vim.api.nvim_create_autocmd('BufWritePre', {
			buffer = bufnr,
			command = 'EslintFixAll',
		})
	end,
	settings = {
		packageManager = 'npm'
	}
}

-- Go
lspconfig.gopls.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- Gradle
lspconfig.gradle_ls.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- GraphQL
lspconfig.graphql.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- HTML
lspconfig.html.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- Java
lspconfig.java_language_server.setup {
	capabilities = capabilities,
	cmd = { '/usr/bin/java-language-server' },
	on_load = on_load,
}

-- Javascript & Typescript
lspconfig.tsserver.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- JSON
lspconfig.jsonls.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- Lua
lspconfig.lua_ls.setup {
	capabilities = capabilities,
	filetypes = { "lua", "luau" },
	on_load = on_load,
	settings = {
		Lua = {
			runtime = {
				version = 'LuaJIT',
			},
			diagnostics = {
				globals = { 'vim' },
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file('', true),
			},
			telemetry = {
				enable = false,
			},
		},
	},
}

-- LuaU
lspconfig.luau_lsp.setup {
	capabilities = capabilities,
	filetypes = { "luau" },
	on_load = on_load,
}

-- Markdown
lspconfig.marksman.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- NeoCMake
lspconfig.neocmake.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- OCaml
-- TODO: Make it work
-- lspconfig.ocamllsp.setup {}

-- PHP
-- TODO: Make it work
-- lspconfig.php.setup {
-- 	capabilities = capabilities,
-- 	on_load = on_load,
-- }

-- R
-- TODO: Make it work
-- lspconfig.r.setup {
-- 	capabilities = capabilities,
-- 	on_load = on_load,
-- }

-- ReasonML
lspconfig.reason_ls.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- Ruby
lspconfig.solargraph.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- Rust
lspconfig.rls.setup {
	capabilities = capabilities,
	on_load = on_load,
	settings = {
		rust = {
			unstable_features = true,
			build_on_save = false,
			all_features = true,
		},
	},
}

-- SQL
lspconfig.sqlls.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- Tailwind
lspconfig.tailwindcss.setup {
	capabilities = capabilities,
	filetypes = { "html", "elixir", "eelixir", "heex" },
	init_options = {
		userLanguages = {
			elixir = "html-eex",
			eelixir = "html-eex",
			heex = "html-eex",
		},
	},
	on_load = on_load,
	settings = {
		tailwindCSS = {
			experimental = {
				classRegex = {
					'class[:]\\s*"([^"]*)"',
				},
			},
		},
	},
}

-- Terraform
lspconfig.terraform_lsp.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- VIM
lspconfig.vimls.setup {
	capabilities = capabilities,
	on_load = on_load,
}

-- YAML
lspconfig.yamlls.setup {
	capabilities = capabilities,
	on_load = on_load,
}
