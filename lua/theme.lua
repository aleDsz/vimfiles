-- Sets the colorscheme for terminal sessions too.
vim.cmd([[ colorscheme dracula ]])

-- Sets the italic mode
-- vim.cmd([[ let g:dracula_italic = 1 ]])
vim.g.dracula_italic = 1

-- Sets the colorscheme on every save
vim.cmd([[ autocmd BufEnter * colorscheme dracula ]])

-- Transparency
vim.opt.termguicolors = true

-- Start with transparency
vim.cmd([[ au VimEnter * highlight Normal guibg=NONE ctermbg=NONE ]])

-- Override
vim.cmd([[ au BufEnter * highlight Normal guibg=NONE ctermbg=NONE ]])
