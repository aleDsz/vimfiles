---@type lazy.types.LazyPluginBase
return {
  "laytan/cloak.nvim",
  opts = {
    enabled = true,
    cloak_character = "*",
    highlight_group = "Comment",
    patterns = {
      {
        file_pattern = { ".env*", },
        cloak_pattern = "=.+"
      },
    },
  },
}
