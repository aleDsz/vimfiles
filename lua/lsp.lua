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

local servers = {
  "ansiblels",
  "asm_lsp",
  "bashls",
  "buf_ls",
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
  "ts_ls",
  "vimls",
  "yamlls"
}

require("mason").setup()
require("mason-lspconfig").setup {
  ensure_installed = servers,
  automatic_installation = true,
}

-- for _, name in pairs(servers) do
--   vim.lsp.config[name].setup {
--     capabilities = capabilities,
--     on_attach = on_attach,
--     autostart = true,
--   }
-- end

-- Godot
-- vim.lsp.config.gdscript.setup({
--   name = "godot",
-- 	capabilities = capabilities,
--   on_attach = on_attach,
--   autostart = true,
-- })

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
