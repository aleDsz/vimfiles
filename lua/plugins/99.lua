---@type lazy.types.LazyPluginBase
return {
	"aleDsz/99",
	opts = {
		completion = {
			custom_rules = {},
			source = "cmp",
		},
		display_errors = true,
		md_files = {
			"AGENT.md",
			"CLAUDE.md",
		},
		model = "ollama/qwen2.5-coder:7b",
	},
}
