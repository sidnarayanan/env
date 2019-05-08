if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-fugitive'
    Plug 'valloric/youcompleteme'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
call plug#end()
    

if has("syntax")
    syntax on
endif

set nu
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set hlsearch

set foldmethod=indent

command Q q
command W w
command WQ wq

"autocmd BufReadPost * :DetectIndent 
let g:detectindent_preferred_expandtab = 4 
let g:detectindent_preferred_indent = 4 

filetype indent plugin on

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode
vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>
hi Search cterm=None ctermfg=black ctermbg=yellow
hi Visual ctermfg=black

set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_them='deus'
