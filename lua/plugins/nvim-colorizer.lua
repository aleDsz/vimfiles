---@type lazy.types.LazyPluginBase
return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    local colorizer = require "colorizer"

    colorizer.setup {
      "*",
      css = { css = true, css_fn = true },
      html = { css = true, css_fn = true },
      heex = { css = true, css_fn = true },
      js = { css = true, css_fn = true },
      eex = { css = true, css_fn = true },
      ex = { css = true, css_fn = true },
    }
  end,
}
