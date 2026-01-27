---@type lazy.types.LazyPluginBase
return {
	"3rd/image.nvim",
	build = false,
	opts = {
		backend = "kitty",
		processor = "magick_cli",
		integrations = {
			markdown = {
				enabled = true,
				clear_in_insert_mode = false,
				download_remote_images = true,
				only_render_image_at_cursor = false,
				only_render_image_at_cursor_mode = "popup",
				floating_windows = false,
				filetypes = { "markdown", "vimwiki" },
			},
			neorg = {
				enabled = true,
				filetypes = { "norg" },
			},
			typst = {
				enabled = true,
				filetypes = { "typst" },
			},
			html = {
				enabled = false,
			},
			css = {
				enabled = false,
			},
		},
	},
}
