---@type lazy.types.LazyPluginBase
return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "nvim-treesitter/nvim-treesitter-refactor"
  },
  config = function()
    local configs = require "nvim-treesitter.configs"

    configs.setup {
      highlight = {
        enable = true,
      },
      indent = {
        enable = true,
      },
    }

    vim.cmd(":TSUpdate")
  end,
}
