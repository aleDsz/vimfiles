local colors = require("theme.colors")

local hi_groups = {
	NeoTreeDirectoryIcon = { fg = colors.purple },
	NeoTreeDirectoryName = { fg = colors.purple, bold = true },
	NeoTreeRootName = { fg = colors.purple, bold = true },
	NeoTreeFileName = { fg = colors.bright_purple },
	NeoTreeFileIcon = { fg = colors.bright_purple },
	NeoTreeFileNameOpened = { fg = colors.green },
	NeoTreeIndentMarker = { fg = colors.purple },
	NeoTreeGitAdded = { fg = colors.green },
	NeoTreeGitConflict = { fg = colors.red },
	NeoTreeGitModified = { fg = colors.orange },
	NeoTreeGitUntracked = { fg = colors.yellow },
	NeoTreeNormal = { bg = colors.menu, fg = colors.fg },
	NeoTreeNormalNC = { fg = colors.bright_purple, bg = colors.menu },
	NeoTreeSymbolicLinkTarget = { fg = colors.cyan },
}

for group, spec in pairs(hi_groups) do
	vim.api.nvim_set_hl(0, group, spec)
end
