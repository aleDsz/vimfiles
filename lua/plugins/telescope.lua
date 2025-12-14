---@type lazy.types.LazyPluginBase
return {
  {
    "nvim-telescope/telescope.nvim", tag = "v0.2.0",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require "telescope"

      telescope.setup {
        extensions = {
          file_browser = {
            theme = "ivy",
            hijack_netrw = true,
          },
        },
      }
    end,
  },
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
    config = function()
      local telescope = require "telescope"
      telescope.load_extension "file_browser"
    end,
  },
}
