" .vimrc
" Author: Alexandre de Souza <alexandre@aledsz.com.br>
" Source: http://github.com/aleDsz/vimfiles

" ##### Plug setup  {{{
call plug#begin('~/.vim/plugged')

if filereadable(expand("~/.vimrc.bundles"))
  source ~/.vimrc.bundles
endif

" "}}}
" ##### Plugs  {{{
" Base
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'teranex/jk-jumps.vim'
Plug 'scrooloose/nerdtree'
Plug 'milkypostman/vim-togglelist'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'sjl/vitality.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Support
Plug 'tpope/vim-dispatch'
Plug 'embear/vim-localvimrc'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'Raimondi/delimitMate'
Plug 'msanders/snipmate.vim'
Plug 'tomtom/tcomment_vim'
Plug 'maxbrunsfeld/vim-yankstack'
Plug 'Shougo/vimproc.vim'
Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
Plug 'tpope/vim-projectionist'
Plug 'c-brenn/fuzzy-projectionist.vim'
Plug 'andyl/vim-projectionist-elixir'
Plug 'oblitum/rainbow'

" Colorschemes
Plug 'sjl/badwolf'
Plug 'dracula/vim'
Plug 'tomasr/molokai'

" Languages
Plug 'b4winckler/vim-objc'
Plug 'rodjek/vim-puppet'
Plug 'jnwhiteh/vim-golang'
Plug 'pangloss/vim-javascript'
Plug 'gkz/vim-ls'
Plug 'kchmck/vim-coffee-script'
Plug 'hashivim/vim-terraform'
Plug 'OrangeT/vim-csharp'
Plug 'mustache/vim-mustache-handlebars'
Plug 'nelstrom/vim-markdown-folding'
Plug 'ekalinin/Dockerfile.vim'
Plug 'digitaltoad/vim-pug'
Plug 'elixir-lang/vim-elixir'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-tags'
Plug 'osyo-manga/vim-monster'
Plug 'burner/vim-svelte'
Plug 'JesseKPhillips/d.vim'
Plug 'StanAngeloff/php.vim'
Plug 'noahfrederick/vim-composer'
Plug 'OmniSharp/omnisharp-vim'
Plug 'tapichu/asm2d-vim'
Plug 'scrooloose/syntastic'
Plug 'lifepillar/vim-mucomplete'
Plug 'jeaye/color_coded'
Plug 'vim-ruby/vim-ruby'
Plug 'tpope/vim-rails'
Plug 'vim-crystal/vim-crystal'

" JS Beautiy
Plug 'michalliu/jsruntime.vim'
Plug 'michalliu/jsoncodecs.vim'

" Omnicompletion
Plug 'scrooloose/syntastic'

" Search
Plug 'haya14busa/incsearch.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Git
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
" }}}
" ##### Plug post-setup {{{
call plug#end()
" }}}
" ##### Basic options  {{{
" aleDsz Options
set guifont=VictorMono\ Nerd\ Font:h14
set guioptions=                 " Don't show right scrollbar

" NeoVim Options
" Display incomplete commands.
set noshowcmd
" Display the mode you're in.
set showmode

" Transparency
set termguicolors
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE
hi Normal guibg=NONE ctermbg=NONE
if has('nvim')
	highlight Normal guibg=none
	highlight NonText guibg=none
end

" Intuitive backspacing.
set backspace=indent,eol,start
" Handle multiple buffers better.
set hidden

" Enhanced command line completion.
set wildmenu
" Complete files like a shell.
set wildmode=list:longest

" Case-insensitive searching.
set ignorecase
" But case-sensitive if expression contains a capital letter.
set smartcase

" Show line numbers.
set number
" Show cursor position.
set ruler

" Highlight matches as you type.
set incsearch
" Don't highlight matches.
set nohlsearch

" Turn off line wrapping.
set nowrap    
" Show 3 lines of context around the cursor.
set scrolloff=3

" Set the terminal's title
set title
" No beeping.
set visualbell

" Don't make a backup before overwriting a file.
set nobackup
" And again.
set nowritebackup
" Keep swap files in one location
set directory=$HOME/.vim/tmp//,.

" Global tab width.
set tabstop=2
" And again, related.
set shiftwidth=2

" Files open expanded
set foldlevelstart=50
" Use decent folding
set foldmethod=indent

" Show the status line all the time
set laststatus=2
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Always diff using vertical mode
set diffopt+=vertical

" Automatically reads changed files
set autoread

" Enable syntax highlighting
syntax on

" Sets the colorscheme for terminal sessions too.
colorscheme dracula
autocmd BufEnter * colorscheme dracula

" Leader = ,
let mapleader = ","
let maplocalleader = "'"

" Open preview window below the code
set splitbelow

" Remove 'press any key to continue'
set cmdheight=1
" }}}
" ##### General mappings  {{{
" ##### Tabs {{{
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>e :tabedit
nnoremap <leader>n :tabnext<cr>
nnoremap <leader>p :tabprevious<cr>
" }}}
" ##### Line movement {{{
" Go to start of line with H and to the end with $
noremap H ^
noremap L $

" Emacs bindings in command-line mode
cnoremap <C-A> <home>
cnoremap <C-E> <end>
" }}}
" ##### Split windows {{{
" Move around easily
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" }}}
" ##### Folding {{{
" Toggles folding with space
nnoremap <Space> za
" Open all folds
nnoremap zO zR
" Close all folds
nnoremap zC zM
" Close current fold
nnoremap zc zc
" Close all folds except the current one
nnoremap zf mzzMzvzz
" }}}
" ##### Search {{{
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" }}}
" ##### Spell {{{
set spelllang=en_us

nnoremap ,sc :set spell!<cr>
" }}}
" ##### Misc {{{
" Edit and load vimrc/gvimrc
nnoremap <leader>eg :vsplit $MYGVIMRC<cr>
nnoremap <leader>sg :source $MYGVIMRC<cr>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Wrap current paragraph
noremap <leader>w gqap

" Toggles hlsearch
nnoremap <leader>hs :set hlsearch!<cr>

" Maps <C-C> to <esc>
noremap <C-C> <esc>

" Go full-screen
nnoremap <leader>fs :set lines=999 columns=9999<cr>

" Set current file executable
nnoremap <leader>xx :!chmod +x %<cr>

" Close Quickfix and Preview
nnoremap <leader>q :pclose<cr>:cclose<cr>

" OS Clipboard
nnoremap <leader>y "+yy
vnoremap <leader>y "+yy
vnoremap <leader>v "*p
vnoremap <leader>V "*P
nnoremap <leader>v "*p
nnoremap <leader>V "*P
" }}}
" }}}
" ##### Plugin settings  {{{
" ##### Lazygit  {{{
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_use_neovim_remote = 1 " fallback to 0 if neovim-remote is not installed

" setup mapping to call :LazyGit
nnoremap <silent> <leader>lg :LazyGit<CR>
" }}}
" ##### NERDTree  {{{
noremap <leader>ft :NERDTreeToggle<CR>

" Don't fuck up vim's default file browser
let g:NERDTreeHijackNetrw = 0
" }}}
" ##### Airline  {{{
let g:airline_powerline_fonts = 1
let g:airline_theme = 'papercolor'
let g:airline_section_warning = ''
let g:airline_inactive_collapse = 0
let g:airline#extensions#default#section_truncate_width = {
  \ 'a': 60,
  \ 'b': 80,
  \ 'x': 100,
  \ 'y': 100,
  \ 'z': 60,
\ }
" }}}
" ##### FZF  {{{
let g:ag_working_path_mode="r"

nnoremap <C-P> :Files<cr>
nnoremap <C-F> :Ag 
" }}}
" ##### Yankstack  {{{
" Don't use default mappings
let g:yankstack_map_keys = 0

" Set bindings
nmap <C-M> <Plug>yankstack_substitute_older_paste
nmap <C-N> <Plug>yankstack_substitute_newer_paste
" }}}
" ##### Number toggle  {{{
let g:NumberToggleTrigger="<leader>ll"
"}}}
" ##### togglelist {{{
let g:toggle_list_copen_command="Copen"
" }}}
" ##### localvimrc {{{
let g:localvimrc_whitelist=$HOME.'/github/.*'
let g:localvimrc_persistent=1
" }}}
" ##### editorconfig {{{
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
" }}}
" ##### Syntastic {{{
let g:syntastic_enable_highlighting = 0
let g:syntastic_enable_balloons = 0
" }}}
" ##### Deoplete {{{
let g:deoplete#enable_at_startup = 1
" }}}
" ##### monster (ruby) {{{
let g:monster#completion#rcodetools#backend = "async_rct_complete"
" }}}
" ##### Neomake {{{
augroup neomake_save_linter
	autocmd!
  " autocmd BufWritePost *.js Neomake
	" autocmd BufWritePost *.py Neomake
	" autocmd BufWritePost *.rb Neomake
	" autocmd BufWritePost *.pp Neomake
	" autocmd BufWritePost *.erl Neomake
	" autocmd BufWritePost *.ex Neomake
	" autocmd BufWritePost *.exs Neomake
augroup end

let g:neomake_javascript_standard_maker = { 'errorformat': '%E %f:%l:%c: %m' }
let g:neomake_puppet_enabled_makers = ['puppet', 'puppetlint']
" }}}
" ##### Reason {{{
autocmd FileType reason map <buffer> <D-C> :ReasonPrettyPrint<Cr>
" }}}
" ##### coc.nvim {{{
" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
"nmap <leader>gd :call CocAction('jumpDefinition', 'tab drop')<CR>
nmap <leader>gd <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
nmap <leader>gi <Plug>(coc-implementation)
nmap <leader>gr <Plug>(coc-references)

" Remap for format selected region
vmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')
" }}}
" ##### Rainbow  {{{
let g:rainbow_active = 1
" }}}
" }}}
" ##### Filetype-specific  {{{
" ##### Ruby  {{{
" Specific shiftwidth for ruby files
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set tabstop=2
" Convert tabs to spaces in Ruby files
autocmd FileType ruby set expandtab

" But not for erb files...
autocmd FileType eruby set shiftwidth=4
autocmd FileType eruby set tabstop=4
"
" Remaps textobj-rubyblock's bindings to vim's defaults
autocmd FileType ruby map aB ar
autocmd FileType ruby map iB ir
" }}}
" ##### Puppet  {{{
" Specific shiftwidth for puppet files
autocmd BufRead,BufNewFile *.pp set filetype=puppet
autocmd BufRead,BufNewFile Puppetfile set filetype=ruby

" And custom tab sizes too
autocmd FileType puppet set shiftwidth=2
autocmd FileType puppet set tabstop=2
" }}}
" ##### Markdown  {{{
" Sets markdown syntax for *.md files.
autocmd BufRead,BufNewFile *.md set filetype=markdown

" Wrap markdown files.
autocmd BufRead,BufNewFile *.md set wrap
" }}}
" ##### JavaScript  {{{
autocmd BufRead,BufNewFile *.js set filetype=javascript
autocmd BufRead,BufNewFile *.jsx set filetype=javascript

autocmd BufRead,BufNewFile *.ts set filetype=typescript
autocmd BufRead,BufNewFile *.tsx set filetype=javascript

" Sets html syntax for *.ejs files.
autocmd BufRead,BufNewFile *.ejs set filetype=html

autocmd FileType javascript set shiftwidth=2
autocmd FileType javascript set tabstop=2
autocmd FileType javascript set expandtab

autocmd FileType typescript set shiftwidth=2
autocmd FileType typescript set tabstop=2
autocmd FileType typescript set expandtab
" }}}
" ##### CSS {{{
autocmd BufRead,BufNewFile *.css set filetype=css
autocmd BufRead,BufNewFile *.scss set filetype=css
autocmd BufRead,BufNewFile *.sass set filetype=css
autocmd FileType css set shiftwidth=2
autocmd FileType css set tabstop=2
autocmd FileType css set expandtab
" }}}
" ##### PHP {{{
autocmd BufRead,BufNewFile *.php set filetype=php
autocmd BufRead,BufNewFile *.html set filetype=php

autocmd FileType php set shiftwidth=2
autocmd FileType php set tabstop=2
autocmd FileType php set expandtab
" }}}
" ##### Vim {{{
" Make vimrcs open folded
autocmd FileType vim set foldlevel=0
autocmd FileType vim set foldmethod=marker
" }}}
" ##### XML {{{
" Automatically format XML files
nnoremap <leader>xb :%s,>[ <tab>]*<,>\r<,g<cr> gg=G
" }}}
" ##### LiveScript {{{
autocmd BufRead,BufNewFile *.ls set filetype=ls
autocmd FileType ls set shiftwidth=2
autocmd FileType ls set tabstop=2
" }}}
" ##### LookML {{{
" Sets YAML syntax for *.lookml files.
autocmd BufRead,BufNewFile *.lookml set filetype=yaml
" }}}
" ##### Erlang {{{
autocmd BufRead,BufNewFile *.erl set filetype=erlang
autocmd BufRead,BufNewFile *.xrl set filetype=erlang
autocmd BufRead,BufNewFile *.yrl set filetype=erlang

autocmd FileType erlang set shiftwidth=2
autocmd FileType erlang set tabstop=2
" }}}
" ##### Elixir {{{
autocmd BufRead,BufNewFile *.ex set filetype=elixir
autocmd BufRead,BufNewFile *.exs set filetype=elixir
autocmd BufRead,BufNewFile *.sface set filetype=elixir
autocmd BufRead,BufNewFile *.eex set filetype=elixir
autocmd BufRead,BufNewFile *.leex set filetype=elixir

autocmd FileType elixir set shiftwidth=2
autocmd FileType elixir set tabstop=2
" }}}
" ##### R {{{
autocmd BufRead,BufNewFile *.R set filetype=r
autocmd BufRead,BufNewFile *.Rprofile set filetype=r
autocmd BufRead,BufNewFile *.Renviron set filetype=r
autocmd BufRead,BufNewFile *.RData set filetype=r
autocmd BufRead,BufNewFile *.Rhistory set filetype=r

autocmd FileType r set shiftwidth=2
autocmd FileType r set tabstop=2
" }}}
" ##### OCaml {{{
autocmd BufRead,BufNewFile *.ml set filetype=ocaml
autocmd BufRead,BufNewFile *.mli set filetype=ocaml

autocmd FileType ocaml set shiftwidth=2
autocmd FileType ocaml set tabstop=2
" }}}
" ##### ReasonML {{{
autocmd BufRead,BufNewFile *.re set filetype=reason
autocmd BufRead,BufNewFile *.rei set filetype=reason

autocmd FileType reason set shiftwidth=2
autocmd FileType reason set tabstop=2
" }}}
" ##### Crystal {{{
autocmd BufRead,BufNewFile *.cr set filetype=crystal

autocmd FileType crystal set shiftwidth=2
autocmd FileType crystal set tabstop=2
" }}}
" }}}
