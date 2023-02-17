call plug#begin('~/.vim/plugged')

" Cheeky GitHub Copilot
Plug 'github/copilot.vim'
" VSCode dark theme
Plug 'tomasiser/vim-code-dark'
" Astro plugin
Plug 'wuelnerdotexe/vim-astro'

call plug#end()

" Fixs for 256 color terminals
set t_Co=256
set t_ut=
" Set theme
colorscheme codedark

" tab 4 spaces
filetype plugin indent on
set tabstop=4 shiftwidth=4 expandtab
autocmd FileType make setlocal noexpandtab
autocmd BufRead,BufNewfile *.html,*.js,*.jsx,*.ts,*.tsx,*.astro setlocal tabstop=2 shiftwidth=2 expandtab

set encoding=utf-8
