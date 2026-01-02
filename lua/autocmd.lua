-- You will likely want to reduce updatetime which affects CursorHold
-- note: this setting is global and should be set only once
vim.o.updatetime = 250
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})

-- Start with transparency
vim.api.nvim_create_autocmd({ "BufEnter", "VimEnter" }, {
  callback = function()
    vim.api.nvim_set_hl(0, "Normal", { bg = "NONE" })
  end,
})

-- Enable Treesitter highlighting on file open (only if parser exists)
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  callback = function()
    local buf = vim.api.nvim_get_current_buf()
    if not vim.treesitter.highlighter.active[buf] then
      local lang = vim.treesitter.language.get_lang(vim.bo[buf].filetype)
      -- Only start treesitter if a parser is available
      if lang and pcall(vim.treesitter.language.add, lang) then
        vim.treesitter.start(buf)
      end
    end
  end,
})

vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("LspFormatting", { clear = true }),
  callback = function(event)
    local colorizer = require "colorizer"
    colorizer.attach_to_buffer(0)

    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = event.buf,
      callback = function()
        vim.lsp.buf.format()
        colorizer.reload_all_buffers()
      end,
    })
  end,
})
