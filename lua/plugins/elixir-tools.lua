require("elixir").setup {
  nextls = { enable = false },
  projectionist = { enable = true },
  elixirls = {
    enable = true,
    settings = require("elixir.elixirls").settings {
      mixEnv = "test",
      mixTarget = "host",
      suggestSpecs = true,
      fetchDeps = true,
      dialyzerEnabled = true,
      enableTestLenses = true,
    },
    on_attach = function(client, bufnr)
      vim.keymap.set("n", "<leader>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
      vim.keymap.set("n", "<leader>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
      vim.keymap.set("v", "<leader>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
    end,
  }
}
