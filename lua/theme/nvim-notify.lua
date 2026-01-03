local colors = require("theme.colors")

return {
	NotifyERRORBorder = { fg = colors.dim_red },
	NotifyWARNBorder = { fg = colors.dim_magenta },
	NotifyINFOBorder = { fg = colors.dim_green },
	NotifyDEBUGBorder = { fg = colors.fg },
	NotifyTRACEBorder = { fg = colors.bright_purple },
	NotifyERRORIcon = { fg = colors.red },
	NotifyWARNIcon = { fg = colors.orange },
	NotifyINFOIcon = { fg = colors.bright_green },
	NotifyDEBUGIcon = { fg = colors.fg },
	NotifyTRACEIcon = { fg = colors.purple },
	NotifyERRORTitle = { fg = colors.red },
	NotifyWARNTitle = { fg = colors.orange },
	NotifyINFOTitle = { fg = colors.bright_green },
	NotifyDEBUGTitle = { fg = colors.fg },
	NotifyTRACETitle = { fg = colors.pink },
	NotifyERRORBody = { link = "Normal" },
	NotifyWARNBody = { link = "Normal" },
	NotifyINFOBody = { link = "Normal" },
	NotifyDEBUGBody = { link = "Normal" },
	NotifyTRACEBody = { link = "Normal" },
}
