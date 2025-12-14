---@type lazy.types.LazyPluginBase
return {
  "Mofiqul/dracula.nvim",
  name = "dracula",
  priority = 1000,
  config = function()
    require("dracula").setup({
      transparent_bg = true,
      theme = "dracula",
      lualine_bold = true,
    })
  end,
}
