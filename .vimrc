set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-scripts/AutoComplPop'
"Plugin 'davidhalter/jedi-vim'
"Plugin 'Valloric/YouCompleteMe'
call vundle#end()            " required
filetype plugin indent on    " required

syntax on
colorscheme jellybeans
set number
set ruler
set laststatus=2
set hlsearch
set backspace=2
set autoread
hi Normal ctermbg=none
highlight NonText ctermbg=none

let blacklist = ['tex']
au BufEnter * if index(blacklist, &ft) < 0 |
            \ set ts=4 |
            \ set sts=4 |
            \ set sw=4 |
            \ set showmatch |
			\ set completeopt=longest,menuone |
            \ set autoindent |
            \ set smartindent |
            \ set smarttab |
            \ set expandtab |
            \ set hidden |
            "\ highlight ColorColumn ctermbg=magenta |
            "\ call matchadd('ColorColumn', '\%81v', 100)

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>



"augroup CursorLine
"    au!
"    au VimEnter,WinEnter,BufWinEnter * if index(blacklist, &ft) < 0 | setlocal cursorline cursorcolumn
"    au WinLeave * if index(blacklist, &ft) < 0 | setlocal nocursorline nocursorcolumn
"augroup END
