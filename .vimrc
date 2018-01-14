" VIM configuration file
" ----------------------

" enable syntax
syntax on

" move lines with shift + up / shift + down
nnoremap <S-Up> :m-2<CR>
nnoremap <S-Down> :m+<CR>
inoremap <S-Up> <Esc>:m-2<CR>
inoremap <S-Down> <Esc>:m+<CR>

" fix del button
set backspace=indent,eol,start

" tab size
set tabstop=2 
set softtabstop=2 
set expandtab 
set shiftwidth=2 
set smarttab
