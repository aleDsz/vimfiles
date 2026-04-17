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
		local filetype = vim.bo[buf].filetype

		if not vim.treesitter.highlighter.active[buf] then
			local lang = vim.treesitter.language.get_lang(filetype)

			if vim.treesitter.get_parser(buf, lang, { error = false }) then
				if lang and pcall(vim.treesitter.language.add, lang) then
					vim.treesitter.start(buf)
				end
			end
		end
	end,
})

vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("LspFormatting", { clear = true }),
	callback = function(event)
		local colorizer = require("colorizer")
		local conform = require("conform")

		colorizer.attach_to_buffer(0)

		vim.api.nvim_create_autocmd("BufWritePre", {
			buffer = event.buf,
			callback = function()
				vim.lsp.buf.format()
				conform.format({ bufnr = 0 })
				colorizer.reload_all_buffers()
			end,
		})

		vim.api.nvim_create_autocmd("BufWritePost", {
			buffer = event.buf,
			callback = function()
				colorizer.reload_all_buffers()
			end,
		})
	end,
})
