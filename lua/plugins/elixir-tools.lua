require("elixir").setup {
  nextls = { enable = false },
  projectionist = { enable = true },
  elixirls = {
    enable = true,
    settings = require("elixir.elixirls").settings {
      dialyzerEnabled = true,
      enableTestLenses = true,
    },
    on_attach = function(client, bufnr)
      vim.keymap.set("n", "<space>fp", ":ElixirFromPipe<cr>", { buffer = true, noremap = true })
      vim.keymap.set("n", "<space>tp", ":ElixirToPipe<cr>", { buffer = true, noremap = true })
      vim.keymap.set("v", "<space>em", ":ElixirExpandMacro<cr>", { buffer = true, noremap = true })
    end,
  }
}
