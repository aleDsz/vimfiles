---@type lazy.types.LazyPluginBase
return {
  "Dracula/vim",
  name = "dracula",
  config = function()
    -- Sets the colorscheme for terminal sessions too.
    vim.cmd("colorscheme dracula")

    -- Sets the full support for dracula
    vim.g.dracula_full_special_attrs_support = true
  end,
}
