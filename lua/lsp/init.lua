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

local on_attach = function(client, bufnr)
  require 'completion'.on_attach(client)

  if client.server_capabilities.inlayHintProvider then
    vim.lsp.inlay_hint.enable(bufnr, true)
  end
end

-- The nvim-cmp almost supports LSP's capabilities so
-- You should advertise it to LSP servers..
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local servers = {
  "angularls",
  "ansiblels",
  "asm_lsp",
  "bashls",
  "bufls",
  "clangd",
  "cmake",
  "crystalline",
  "csharp_ls",
  "cssls",
  "cssmodules_ls",
  "dockerls",
  "docker_compose_language_service",
  "elixirls",
  "gopls",
  "gradle_ls",
  "graphql",
  "html",
  "intelephense",
  "java_language_server",
  "jsonls",
  "lua_ls",
  "luau_lsp",
  "marksman",
  "neocmake",
  "reason_ls",
  "rust_analyzer",
  "serve_d",
  "solargraph",
  "sqlls",
  "tailwindcss",
  "terraformls",
  "tsserver",
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
    capabilities = capabilities,
    on_attach = on_attach,
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
-- }
