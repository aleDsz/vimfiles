---@type lazy.types.LazyPluginBase
return {
	"stevearc/conform.nvim",
	opts = {
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			css = { "prettier" },
		},
	},
}
