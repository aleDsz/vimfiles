-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
vim.o.updatetime = 250
vim.api.nvim_command [[
  autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})
]]

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('LspFormatting', { clear = true }),
  callback = function(event)
    if event.data.client_id == 0 then return end

    vim.api.nvim_create_autocmd('BufWritePre', {
      buffer = event.buf,
      callback = function()
        vim.lsp.buf.format({ async = true, timeout_ms = 5000 })
      end,
    })
  end,
})
