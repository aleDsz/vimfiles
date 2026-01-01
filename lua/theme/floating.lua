local colors = require("theme.colors")

-- Make floating windows transparent
return {
  NormalFloat = { bg = colors.none },
  FloatBorder = { bg = colors.none },
  Pmenu = { bg = colors.none },
  PmenuSel = { bg = colors.selection },
}
