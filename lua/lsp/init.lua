local servers = {
	"buf_ls",
	"csharp-ls",
	"elixir-ls",
	"jsonls",
	"lua_ls",
	"luau_lsp",
	"nil_ls",
	"rust-analyzer",
	"tailwindcss",
	"ts_ls",
	"zuban",
}

if not vim.lsp.inlay_hint.is_enabled() then
	vim.lsp.inlay_hint.enable(true)
end

for _, server in ipairs(servers) do
	local file_name = server:gsub("-", "_")
	local ok, config = pcall(require, "lsp." .. file_name)

	if ok then
		vim.lsp.config(server, config)
		vim.lsp.enable(server)
	end
end
