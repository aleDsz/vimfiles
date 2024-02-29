local dap = require("dap")

dap.set_log_level("TRACE")

-- Mix Task
dap.adapters.mix_task = {
  type = "executable",
  command = "/home/aledsz/.elixir-ls/debug_adapter.sh",
  args = {}
}

-- CodeLLDB
dap.adapters.codelldb = {
  type = "server",
  host = "127.0.0.1",
  port = 13000
}

-- Elixir
dap.configurations.elixir = {
  {
    type = "mix_task",
    name = "mix test",
    task = "test",
    request = "launch",
    startApps = true,
    justMyCode = true,
    projectDir = "${workspaceFolder}",
    requireFiles = {
      "test/**/test_helper.exs",
      "test/**/*_test.exs"
    },
    terminal = "integrated",
    stopOnEntry = false
  },
  {
    type = "mix_task",
    name = "phx.server",
    task = "phx.server",
    request = "launch",
    startApps = true,
    justMyCode = true,
    projectDir = "${workspaceFolder}",
    terminal = "integrated",
    stopOnEntry = false
  },
}

-- Rust
dap.configurations.rust = {
  {
    name = "Rust debug",
    type = "codelldb",
    request = "launch",
    program = function()
      vim.fn.jobstart('cargo build')
      return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
    end,
    cwd = "${workspaceFolder}",
    terminal = "integrated",
    sourceLanguages = { "rust" }
  },
}
