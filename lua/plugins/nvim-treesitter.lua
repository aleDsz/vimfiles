---@type lazy.types.LazyPluginBase
return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		local comment = require("ts_context_commentstring")

		comment.setup({
			languages = {
				elixir = { __default = "# %s", __multiline = '@doc """ %s """' },
			},
		})

		configs.setup({
			auto_install = true,
			ensure_installed = "all",
			highlight = {
				additional_vim_regex_highlighting = false,
				enable = true,
			},
			ignore_install = { "jsonc", "ipkg", "blueprint", "fusion", "t32" },
			indent = { enable = true },
			modules = {},
			sync_install = false,
		})
	end,
}
