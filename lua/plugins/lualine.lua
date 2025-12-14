---@type lazy.types.LazyPluginBase
return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "ryanoasis/vim-devicons" },
  opts = {
    options = {
      theme = "dracula-nvim",
      refresh = {
        statusline = 1000,
      },
    },
  },
}
