local prettier = function()
  return {
    exe = "prettier",
    args = {"--stdin-filepath", vim.api.nvim_buf_get_name(0), "--single-quote"},
    stdin = true
  }
end

require("formatter").setup {
  logging = true,
  filetype = {
		css = { prettier },
		elixir = {
			function()
				return {
					exe = "mix",
					args = { "format", "--stdin-filename", vim.api.nvim_buf_get_name(1)},
					stdin = false
				}
			end
		},
    typescriptreact = { prettier },
    typescript = { prettier },
    javascript = { prettier },
    json = { prettier },
    javascriptreact = { prettier },
    rust = {
      function()
        return {
          exe = "rustfmt",
          args = {"--emit=stdout"},
          stdin = true
        }
      end
    },
    lua = {
      function()
        return {
          exe = "stylua",
          args = {"--indent-count", 2, "--stdin"},
          stdin = true
        }
      end
    },
		luau = {
      function()
        return {
          exe = "stylua",
          args = {"--indent-count", 2, "--stdin"},
          stdin = true
        }
      end
    }
  }
}

-- format on save
vim.cmd [[
augroup FormatAutogroup
	autocmd!
	autocmd BufWritePre * lua vim.lsp.buf.format()
augroup END
]]
