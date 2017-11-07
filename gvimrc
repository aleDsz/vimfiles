" Example Vim graphical configuration.
" Copy to ~/.gvimrc or ~/_gvimrc.

set macligatures
set guifont=Fira\ Code:h12
set antialias                     " MacVim: smooth fonts.
set encoding=utf-8                " Use UTF-8 everywhere.
set guioptions-=T                 " Hide toolbar.
set background=light              " Background.
set lines=310 columns=400         " Window dimensions.

" Uncomment to use.
set guioptions=                 " Don't show right scrollbar

colorscheme molokai

" Save using Command-S on MacVim without replacing
noremap <D-s> :w<CR>
