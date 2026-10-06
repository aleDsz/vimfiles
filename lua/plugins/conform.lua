---@type lazy.types.LazyPluginBase
return {
	"stevearc/conform.nvim",
	opts = {
		default_format_opts = {
			lsp_format = "fallback",
		},
		format_on_save = {
			timeout_ms = 1000,
		},
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			css = { "prettier" },
			dockerfile = { "dockerfmt" },
			sql = { "sql-formatter" },
			mysql = { "sql-formatter" },
		},
		formatters = {
			["sql-formatter"] = {
				append_args = { "-l", "mysql" },
			},
		},
	},
}
