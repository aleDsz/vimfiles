---@type lazy.types.LazyPluginBase
return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = {
      timeout_ms = 5000,
      lsp_format = "fallback",
    },
    formatters_by_ft = {
      c = { "clang-format" },
      cpp = { "clang-format" },
      lua = { "stylua" },
      go = { "gofmt" },
      rust = { "clippy" },
      python = { "black" },
      javascript = { "prettier" },
      typescript = { "prettier" },
      elixir = { "mix" },
    },
    formatters = {
      ["clang-format"] = {
        prepend_args = { "-style=file", "-fallback-style=LLVM" },
      },
    },
  },
}
