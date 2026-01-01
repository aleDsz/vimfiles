local colors = require("theme.colors")

return {
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
  NeoTreeNormal = { bg = colors.none, fg = colors.fg },
  NeoTreeNormalNC = { fg = colors.bright_purple, bg = colors.none },
  NeoTreeFloatNormal = { bg = colors.none },
  NeoTreeFloatBorder = { bg = colors.none },
  NeoTreeSymbolicLinkTarget = { fg = colors.cyan },
}
