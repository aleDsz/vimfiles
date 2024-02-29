local colors = require("theme.colors")

local hi_groups = {
  ["@module.elixir"] = { fg = colors.cyan, bold = true, italic = true },
}

for group, spec in pairs(hi_groups) do
  vim.api.nvim_set_hl(0, group, spec)
end
