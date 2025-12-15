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

-- Make floating windows transparent
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'Pmenu', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'PmenuSel', { bg = '#44475a' })
