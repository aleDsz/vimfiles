-- `on_attach` callback will be called after a language server
-- instance has been attached to an open buffer with matching filetype
-- here we're setting key mappings for hover documentation, goto definitions, goto references, etc
-- you may set those key mappings based on your own preference
local on_attach = function(client, bufnr)
	local opts = { noremap = true, silent = true }

	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	vim.api.nvim_buf_set_option(bufnr, "omnifunc", "v:lua.vim.lsp.omnifunc")

	buf_set_keymap("n", "<leader>gd", ":lua vim.lsp.buf.definition()<CR>", opts)
	buf_set_keymap("n", "<leader>gD", ":lua vim.lsp.buf.declaration()<CR>", opts)
	buf_set_keymap("n", "<leader>gi", ":lua vim.lsp.buf.implementation()<CR>", opts)
	buf_set_keymap("n", "<leader>gr", ":lua vim.lsp.buf.references()<CR>", opts)
	buf_set_keymap("n", "<leader>ca", ":lua vim.lsp.buf.code_action()<CR>", opts)
	buf_set_keymap("n", "<space>D", ":lua vim.lsp.buf.type_definition()<CR>", opts)
	buf_set_keymap("n", "K", ":lua vim.lsp.buf.hover()<CR>", opts)
	buf_set_keymap("n", "<C-k>", ":lua vim.lsp.buf.signature_help()<CR>", opts)
	buf_set_keymap("n", "<leader>cf", ":lua vim.lsp.buf.format()<CR>", opts)
end

-- Fix "No information avaiable" when hover
vim.lsp.handlers['textDocument/hover'] = function(_, result, ctx, config)
	config = config or {}
	config.focus_id = ctx.method

	if not (result and result.contents) then
		return
	end

	local markdown_lines = vim.lsp.util.convert_input_to_markdown_lines(result.contents)
	markdown_lines = vim.lsp.util.trim_empty_lines(markdown_lines)

	if vim.tbl_isempty(markdown_lines) then
		return
	end

	return vim.lsp.util.open_floating_preview(markdown_lines, 'markdown', config)
end

vim.lsp.set_log_level("debug")

-- The nvim-cmp almost supports LSP's capabilities so
-- You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local servers = {
	"asm_lsp",
	"bashls",
	"clangd",
	"csharp_ls",
	"cmake",
	"crystalline",
	"cssls",
	"cssmodules_ls",
	"serve_d",
	"dockerls",
	"docker_compose_language_service",
	"elixirls",
	"erlangls",
	"gopls",
	"gradle_ls",
	"graphql",
	"html",
	"java_language_server",
	"tsserver",
	"jsonls",
	"lua_ls",
	"luau_lsp",
	"marksman",
	"neocmake",
	"intelephense",
	"reason_ls",
	"solargraph",
	"rust_analyzer",
	"sqlls",
	"tailwindcss",
	"terraformls",
	"vimls",
	"yamlls"
}

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = servers,
	automatic_installation = true,
})

for _, name in pairs(servers) do
	require('lspconfig')[name].setup {
		on_attach = on_attach,
		capabilities = capabilities,
		autostart = true,
	}
end

-- TODO: Add these servers

-- Eslint
-- lspconfig.eslint.setup({
-- 	capabilities = capabilities,
-- 	on_attach = function(client, bufnr)
-- 		vim.api.nvim_create_autocmd("BufWritePre", {
-- 			buffer = bufnr,
-- 			command = "EslintFixAll",
-- 		})
-- 	end,
-- 	settings = {
-- 		packageManager = "npm",
-- 	},
-- })

-- OCaml
-- TODO: Make it work
-- lspconfig.ocamllsp.setup {}

-- R
-- TODO: Make it work
-- lspconfig.r.setup {
-- 	capabilities = capabilities,
-- 	on_load = on_load,
-- }
