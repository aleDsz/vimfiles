---@type lazy.types.LazyPluginBase
return {
	"rcarriga/nvim-notify",
	opts = {
		background_colour = "#000000",
		fps = 30,
		icons = {
			DEBUG = "",
			ERROR = "",
			INFO = "",
			TRACE = "✎",
			WARN = "",
		},
		level = 3,
		minimum_width = 50,
		render = "default",
		stages = "fade_in_slide_out",
		time_formats = {
			notification = "%T",
			notification_history = "%FT%T",
		},
		timeout = 5000,
		top_down = true,
	},
}
