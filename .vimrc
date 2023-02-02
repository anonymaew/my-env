call plug#begin('~/.vim/plugged')

" Cheeky GitHub Copilot
Plug 'github/copilot.vim'
" VSCode dark theme
Plug 'tomasiser/vim-code-dark'

call plug#end()

" Fixs for 256 color terminals
set t_Co=256
set t_ut=
colorscheme codedark

" tab 4 spaces
set tabstop=4
set shiftwidth=4

set encoding=utf-8
