-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
vim.o.updatetime = 250
vim.api.nvim_command [[
  autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})
]]
