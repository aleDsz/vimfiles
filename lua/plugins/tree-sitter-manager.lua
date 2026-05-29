---@type lazy.types.LazyPluginBase
return {
	"romus204/tree-sitter-manager.nvim",
	config = function()
		local configs = require("tree-sitter-manager")

		configs.setup({
			auto_install = true,
			ensure_installed = "all",
			highlight = true,
		})
	end,
}
