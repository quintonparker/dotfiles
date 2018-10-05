" tree mode file explorer because in gui mode we have mouse support!
let g:netrw_liststyle = 3

set columns=160
set lines=120

colorscheme desert
set background=dark

set cursorline

nnoremap <leader>rr :so $MYVIMRC<cr>:so $MYGVIMRC<cr>:noh<cr>
nnoremap <leader>ee :tabnew $MYVIMRC<cr>:tabnew $MYGVIMRC<cr>gT<cr>:noh<cr>

set guioptions-=T

source ~/.gvimrc_local
