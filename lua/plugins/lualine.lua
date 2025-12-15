---@type lazy.types.LazyPluginBase
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "ryanoasis/vim-devicons" },
  opts = {
    options = {
      theme = "dracula",
      refresh = {
        statusline = 1000,
      },
    },
  },
}
