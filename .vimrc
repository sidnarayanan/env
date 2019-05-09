if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
    if has('nvim')
        Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
    else
        Plug 'Shougo/deoplete.nvim'
        Plug 'roxma/nvim-yarp'
        Plug 'roxma/vim-hug-neovim-rpc'
    endif
    Plug 'tpope/vim-sensible'
    Plug 'tpope/vim-fugitive'
    "Plug 'valloric/youcompleteme'
    "Plug 'https://github.com/davidhalter/jedi-vim'
    "Plug 'https://github.com/ervandew/supertab'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'deoplete-plugins/deoplete-jedi', { 'do': ':UpdateRemotePlugins' }
    "Plug 'python-mode/python-mode' ", { 'branch': 'develop' }
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
let g:airline_theme='base16_adwaita'
let g:ycm_autoclose_preview_window_after_insertion = 1


"let g:pymode_lint = 0
"let g:pymode_options_max_line_length = 900000000
"let g:pymode_folding = 1
"let g:pymode_rope = 0
"let g:pymode_rope_completion = 0

let g:SuperTabDefaultCompletionType = "context"
let g:jedi#popup_on_dot = 0
let g:jedi#show_call_signatures = "1"
let g:pymode_rope = 0
"let g:jedi#completions_command = "<Tab>"

"let g:deoplete#sources#jedi#python_path = "python3" 
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 1
let g:deoplete#sources#jedi#show_docstring = 1
