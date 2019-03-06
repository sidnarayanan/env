if has("syntax")
    syntax on
  endif

  set nu
  set expandtab
  set tabstop=4
  set softtabstop=4
  set shiftwidth=4
  set hlsearch

  command Q q
  command W w
  command WQ wq

  autocmd BufReadPost * :DetectIndent 
  let g:detectindent_preferred_expandtab = 1 
  let g:detectindent_preferred_indent = 4 

  filetype indent plugin on

  nnoremap <F2> :set invpaste paste?<CR>
  set pastetoggle=<F2>
  set showmode
  vnoremap // y/\V<C-r>=escape(@",'/\')<CR><CR>

