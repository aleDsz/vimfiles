-- Sets the colorscheme for terminal sessions too.
vim.cmd("colorscheme dracula")

-- Sets the full support for dracula
vim.g.dracula_full_special_attrs_support = true

-- Transparency
vim.opt.termguicolors = true

-- Start with transparency
vim.cmd("au VimEnter * highlight Normal guibg=NONE ctermbg=NONE")

-- Override
vim.cmd("au BufEnter * highlight Normal guibg=NONE ctermbg=NONE")
