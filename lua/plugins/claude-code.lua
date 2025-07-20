require("claude-code").setup({
  command = "npx claude",
  window = {
    enter_insert = false,
    position = "float",
    float = {
      width = "90%",
      height = "90%",
      row = "center",
      col = "center",
      relative = "editor",
      border = "rounded",
    },
  },
})
