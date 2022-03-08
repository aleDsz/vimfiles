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
Plug 'tpope/vim-projectionist'
Plug 'c-brenn/fuzzy-projectionist.vim'
Plug 'andyl/vim-projectionist-elixir'

" Colorschemes
Plug 'sjl/badwolf'
Plug 'dracula/vim'
Plug 'tomasr/molokai'

" Languages
" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" JavaScript
Plug 'pangloss/vim-javascript'

" Terraform
Plug 'hashivim/vim-terraform'

" C#
Plug 'OrangeT/vim-csharp'
Plug 'OmniSharp/omnisharp-vim'

" Mustache
Plug 'mustache/vim-mustache-handlebars'

" Markdown
Plug 'nelstrom/vim-markdown-folding'

" Dockerfile
Plug 'ekalinin/Dockerfile.vim'

" Erlang & Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-tags'

" D
Plug 'JesseKPhillips/d.vim'

" PHP
Plug 'StanAngeloff/php.vim'
Plug 'noahfrederick/vim-composer'
Plug 'jwalton512/vim-blade'

" ASM
Plug 'tapichu/asm2d-vim'

" 
Plug 'scrooloose/syntastic'
Plug 'lifepillar/vim-mucomplete'

" C/C++/ObjC
Plug 'jeaye/color_coded'
Plug 'm-pilia/vim-ccls'
Plug 'octol/vim-cpp-enhanced-highlight'

" Ruby
Plug 'vim-ruby/vim-ruby'

" Crystal
Plug 'vim-crystal/vim-crystal'

" ReasonML/OCaml
Plug 'rgrinberg/vim-ocaml', {'for': ['ocaml', 'opam', 'dune'] }
Plug 'jordwalke/vim-reasonml', {'for': ['reason', 'ocaml'] }

" Omnicompletion
Plug 'scrooloose/syntastic'

" Search
Plug 'haya14busa/incsearch.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

" Git
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }

" Misc
Plug 'andweeb/presence.nvim'
Plug 'ryanoasis/vim-devicons'
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

" Start with NERDTree openned
autocmd VimEnter * NERDTree

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
let g:dracula_italic = 1
autocmd BufEnter * colorscheme dracula

" Transparency
set termguicolors
" Start with transparency
au VimEnter * highlight Normal guibg=NONE ctermbg=NONE
" Override 
au BufEnter * highlight Normal guibg=NONE ctermbg=NONE

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
noremap <leader>fs :Ag 
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
" ##### coc.nvim {{{
" Set internal encoding of vim, not needed on neovim, since coc.nvim using some
" unicode characters in the file autoload/float.vim
set encoding=utf-8

" TextEdit might fail if hidden is not set.
set hidden

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("nvim-0.5.0") || has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use `[c` and `]c` for navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <leader>gd :vsplit<CR><Plug>(coc-definition)
nmap <leader>GD <Plug>(coc-definition)
nmap <leader>gy <Plug>(coc-type-definition)
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
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" Remap <C-f> and <C-b> for scroll float windows/popups.
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" CodeLens Color
hi CocCodeLens guifg=#44475a
" }}}
" {{{ ##### ReasonML/OCaml
autocmd FileType reason silent! call merlin#Register()
autocmd FileType reason nnoremap <silent>	<leader>rp :ReasonPrettyPrint<CR>
autocmd FileType ocaml,reason nnoremap <silent> <localleader>d :MerlinDocument<CR>

let g:reasonml_project_airline = 1
let g:reasonml_syntastic_airline = 1
let g:reasonml_clean_project_airline = 1

let g:merlin_python_version = 3

let g:syntastic_reason = 1
let g:syntastic_ocaml_checkers = ['merlin']
let g:syntastic_reason_checkers = ['merlin']

let g:airline#extensions#esy#enabled = 1
let g:airline#extensions#reason#enabled = 1
" }}}
" }}}
" ##### Filetype-specific  {{{
" ##### C/C++ {{{
" ============
" vim-cpp-enhanced-highlight
" ============
" Highlighting of class scope is disabled by default. To enable set
let g:cpp_class_scope_highlight = 1

" Highlighting of member variables is disabled by default. To enable set
let g:cpp_member_variable_highlight = 1

" Highlighting of class names in declarations is disabled by default. To enable set
let g:cpp_class_decl_highlight = 1

" Highlighting of POSIX functions is disabled by default. To enable set
let g:cpp_posix_standard = 1

" There are two ways to highlight template functions. Either
let g:cpp_experimental_simple_template_highlight = 1

" Note: C++ template syntax is notoriously difficult to parse, so don't expect this feature to be perfect.
" Highlighting of library concepts is enabled by
let g:cpp_concepts_highlight = 1

" This will highlight the keywords concept and requires as well as all named requirements (like DefaultConstructible) in the standard library.
" Highlighting of user defined functions can be disabled by
let g:cpp_no_function_highlight = 1

" ============
" vim-ccls
" ============
" The size and position of the tree window can be set:
let g:ccls_size = 50
let g:ccls_position = 'botright'
let g:ccls_orientation = 'horizontal'

" The size of the floating window (Neovim only) can be controlled:
let g:ccls_float_width = 50
let g:ccls_float_height = 20
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
autocmd FileType ocaml set expandtab
" }}}
" ##### ReasonML {{{
autocmd BufRead,BufNewFile *.re set filetype=reason
autocmd BufRead,BufNewFile *.rei set filetype=reason

autocmd FileType reason set shiftwidth=2
autocmd FileType reason set tabstop=2
autocmd FileType reason set expandtab
" }}}
" ##### Crystal {{{
autocmd BufRead,BufNewFile *.cr set filetype=crystal

autocmd FileType crystal set shiftwidth=2
autocmd FileType crystal set tabstop=2
autocmd FileType crystal set expandtab
" }}}
" ##### Terraform {{{
autocmd BufRead,BufNewFile *.tf set filetype=terraform
autocmd BufRead,BufNewFile *.tfvars set filetype=terraform
autocmd BufRead,BufNewFile *.hcl set filetype=terraform

autocmd FileType terraform set shiftwidth=2
autocmd FileType terraform set tabstop=2
autocmd FileType terraform set expandtab

let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1
let g:terraform_binary_path="~/.asdf/shims/terraform"
" }}}
" {{{ ##### CSS
autocmd BufRead,BufNewFile *.css set filetype=css
autocmd BufRead,BufNewFile *.scss set filetype=scss
autocmd BufRead,BufNewFile *.sass set filetype=sass

autocmd FileType scss setl iskeyword+=@-@
autocmd FileType scss setl iskeyword+=$-$
" }}}
" }}}
