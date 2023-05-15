-- Enable Powerline Fonts
vim.g.airline_powerline_fonts = 1

-- Set Airline Theme
vim.g.airline_theme = "dracula"

-- Section warning should be blank
vim.g.airline_section_warning = ""

-- Determine whether inactive windows should
-- have the left section collapsed to only
-- the filename of that buffer
vim.g.airline_inactive_collapse = 0

-- Control which sections get truncated and at what width
vim.g.airline = {
	extensions = {
		default = {
			section_truncate_width = {
				["a"] = 60,
				["b"] = 80,
				["x"] = 100,
				["y"] = 100,
				["z"] = 60,
			},
		},
	},
}
