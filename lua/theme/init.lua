-- Load highlights
local configs = {
  "elixir",
  "neo-tree",
  "floating",
  "nvim-notify",
}

for _, file_name in ipairs(configs) do
  local ok, hi_groups = pcall(require, "theme." .. file_name)

  if ok then
    for group, spec in pairs(hi_groups) do
      vim.api.nvim_set_hl(0, group, spec)
    end
  end
end
