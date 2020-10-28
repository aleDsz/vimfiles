" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

set macligatures
set guifont=VictorMono\ Nerd\ Font:h18
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set background=light              " Background.
set lines=130 columns=210         " Window dimensions.

" Uncomment to use.
set guioptions=                 " Don't show right scrollbar

colorscheme dracula

" Save using Command-S on MacVim without replacing
noremap <D-s> :w<CR>

" MacVim transparency
set transparency=8
set blur=80
