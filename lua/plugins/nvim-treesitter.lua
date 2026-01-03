---@type lazy.types.LazyPluginBase
return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter")
		local comment = require("ts_context_commentstring")

		comment.setup({
			enable_autocmd = false,
			languages = {
				typescript = "// %s",
				lua = "-- %s",
				elixir = "# %s",
			},
		})

		treesitter.setup({
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = true,
			},
		})
	end,
}
