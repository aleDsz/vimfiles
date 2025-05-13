require("tailwind-tools").setup {
  server = {
    override = true,
    settings = {
      classAttributes = { "class", "className", "classList", "ngClass" },
      lint = {
        cssConflict = "warning",
        invalidApply = "error",
        invalidConfigPath = "error",
        invalidScreen = "error",
        invalidTailwindDirective = "error",
        invalidVariant = "error",
        recommendedVariantOrder = "warning"
      },
      validate = true,
      experimental = {
        classRegex = { 'class[:]\\s*"([^"]*)"' }
      },
      includeLanguages = {
        elixir = "phoenix-heex",
        eelixir = "phoenix-heex",
        heex = "phoenix-heex",
      },
    },
  },
  document_color = {
    enabled = true,
    kind = "inline",
    inline_symbol = "󰝤 ",
    debounce = 200,
  },
  conceal = {
    enabled = false,
    min_length = nil,
    symbol = "󱏿",
    highlight = {
      fg = "#38BDF8",
    },
  },
  cmp = {
    highlight = "foreground",
  },
}
