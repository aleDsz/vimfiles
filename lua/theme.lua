-- Sets the colorscheme for terminal sessions too.
vim.cmd("colorscheme gloombuddy")

-- Sets the italic mode
vim.g.dracula_italic = 1

-- Transparency
vim.opt.termguicolors = true

-- Start with transparency
vim.cmd("au VimEnter * highlight Normal guibg=NONE ctermbg=NONE")

-- Override
vim.cmd("au BufEnter * highlight Normal guibg=NONE ctermbg=NONE")
