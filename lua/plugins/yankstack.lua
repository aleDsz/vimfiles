---@type lazy.types.LazyPluginBase
return {
  "maxbrunsfeld/vim-yankstack",
  config = function()
    -- Don't use default mappings
    vim.g.yankstack_map_keys = 0
  end,
}
