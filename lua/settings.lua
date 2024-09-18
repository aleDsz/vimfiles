-- Font
vim.opt.guifont = { "VictorMono Nerd Font", ":h14" }

-- NeoVim Options
-- Display incomplete commands.
vim.opt.showcmd = false

-- Display the mode you're in.
vim.opt.showmode = true

-- Intuitive backspacing.
vim.opt.backspace = "indent,eol,start"

-- Handle multiple buffers better.
vim.opt.hidden = true

-- Enhanced command line completion.
vim.opt.wildmenu = true

-- Complete files like a shell.
vim.opt.wildmode = "list:longest"

-- Case-insensitive searching.
vim.opt.ignorecase = true

-- But case-sensitive if expression contains a capital letter.
vim.opt.smartcase = true

-- Show line numbers.
vim.opt.number = true

-- Show cursor position.
vim.opt.ruler = true

-- Highlight matches as you type.
vim.opt.incsearch = true

-- Don't highlight matches.
vim.opt.hlsearch = false

-- Turn off line wrapping.
vim.opt.wrap = false

-- Show 3 lines of context around the cursor.
vim.opt.scrolloff = 3

-- Set the terminal's title
vim.opt.title = true

-- No beeping.
vim.opt.visualbell = false

-- Don't make a backup before overwriting a file.
vim.opt.backup = false

-- And again.
vim.opt.writebackup = false

-- Keep swap files in one location
vim.opt.directory = "/home/aledsz/.vim/tmp//,."

-- Global tab width.
vim.opt.tabstop = 2

-- And again, related.
vim.opt.shiftwidth = 2

-- Files open expanded
vim.opt.foldlevelstart = 50

-- Use decent folding
vim.opt.foldmethod = "indent"

-- Show the status line all the time
vim.opt.laststatus = 2

-- Useful status information at bottom of screen
vim.opt.statusline = [[
  [%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P
]]

-- Always diff using vertical mode
-- vim.cmd([[ set diffopt+=vertical ]])

-- Automatically reads changed files
vim.opt.autoread = true

-- Enable syntax highlighting
vim.opt.syntax = 'on'

-- Enable IncSearch
vim.opt.incsearch = true

-- Disable mouse
vim.opt.mouse = nil

-- MapLeader = ,
-- vim.cmd([[ let mapleader = "," ]])
vim.g.mapleader = ","

-- MapLocalLeader = '
vim.g.maplocalleader = "'"

-- Open preview window below the code
vim.opt.splitbelow = true

-- Remove 'press any key to continue'
vim.opt.cmdheight = 1

-- Set spell lang
vim.opt.spelllang = "en_us"

-- Disable mouse
vim.opt.mouse = ""
