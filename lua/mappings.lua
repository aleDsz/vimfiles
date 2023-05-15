-- Tabs
vim.cmd("nnoremap <leader>t :tabnew<cr>")
vim.cmd("nnoremap <leader>te :tabedit")
vim.cmd("nnoremap <leader>tc :tabclose")
vim.cmd("nnoremap <leader>tn :tabnext<cr>")
vim.cmd("nnoremap <leader>tp :tabprevious<cr>")

-- Line movement
-- Go to start of line with H and to the end with L
vim.cmd("noremap H ^")
vim.cmd("noremap L $")

-- Emacs bindings in command-line mode
vim.cmd("cnoremap <C-A> <home>")
vim.cmd("cnoremap <C-E> <end>")

-- Split windows
-- Move around easily
vim.cmd("nnoremap <C-h> <C-w>h")
vim.cmd("nnoremap <C-j> <C-w>j")
vim.cmd("nnoremap <C-k> <C-w>k")
vim.cmd("nnoremap <C-l> <C-w>l")

-- Resize
vim.cmd("nnoremap <silent> <Leader>+ :vertical resize +5<CR>")
vim.cmd("nnoremap <silent> <Leader>- :vertical resize -5<CR>")

-- Folding
-- Toggles folding with space
vim.cmd("nnoremap <Space> za")

-- Open all folds
vim.cmd("nnoremap zO zR")

-- Close all folds
vim.cmd("nnoremap zC zM")

-- Close current fold
vim.cmd("nnoremap zc zc")

-- Close all folds except the current one
vim.cmd("nnoremap zf mzzMzvzz")

-- Search
vim.cmd("map /  <Plug>(incsearch-forward)")
vim.cmd("map ?  <Plug>(incsearch-backward)")
vim.cmd("map g/ <Plug>(incsearch-stay)")

-- Spell
vim.cmd("nnoremap ,sc :set spell!<cr>")

-- Misc
-- Edit and load vimrc/gvimrc
-- vim.cmd("nnoremap <leader>eg :vsplit $MYGVIMRC<cr>")
-- vim.cmd("nnoremap <leader>sg :source $MYGVIMRC<cr>")
-- vim.cmd("nnoremap <leader>ev :vsplit $MYVIMRC<cr>")
-- vim.cmd("nnoremap <leader>sv :source $MYVIMRC<cr>")

-- Wrap current paragraph
vim.cmd("noremap <leader>w gqap")

-- Toggles hlsearch
vim.cmd("nnoremap <leader>hs :set hlsearch!<cr>")

-- Maps <C-C> to <esc>
vim.cmd("noremap <C-C> <esc>")

-- Go full-screen
-- vim.cmd("nnoremap <leader>fs :set lines=999 columns=9999<cr>")

-- Set current file executable
vim.cmd("nnoremap <leader>xx :!chmod +x %<cr>")
vim.cmd("nnoremap <leader>XX :!chmod -x %<cr>")

-- Close Quickfix and Preview
-- vim.cmd("nnoremap <leader>q :pclose<cr>:cclose<cr>")

-- OS Clipboard
vim.cmd('nnoremap <leader>y "+yy')
vim.cmd('vnoremap <leader>y "+yy')
vim.cmd('vnoremap <leader>v "*p')
vim.cmd('vnoremap <leader>V "*P')
vim.cmd('nnoremap <leader>v "*p')
vim.cmd('nnoremap <leader>V "*P')

-- Plugins
-- LazyGit
vim.cmd("nnoremap <silent> <leader>lg :LazyGit<CR>")

-- NERDTree
vim.cmd("noremap <leader>ft :NERDTreeToggle<CR>")

-- Yankstack
vim.cmd("nmap <C-M> <Plug>yankstack_substitute_older_paste")
vim.cmd("nmap <C-N> <Plug>yankstack_substitute_newer_paste")

-- Telescope
vim.cmd("nnoremap <C-p> <cmd>Telescope find_files<cr>")
vim.cmd("nnoremap <leader>fs <cmd>Telescope live_grep<cr>")
vim.cmd("nnoremap <leader>fb <cmd>Telescope buffers<cr>")
vim.cmd("nnoremap <leader>fh <cmd>Telescope help_tags<cr>")
