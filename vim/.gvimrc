set columns=120
set lines=120

colorscheme desert
set background=dark

set cursorline

nnoremap <leader>rr :so $MYVIMRC<cr>:so $MYGVIMRC<cr>:noh<cr>
nnoremap <leader>ee :tabnew $MYVIMRC<cr>:tabnew $MYGVIMRC<cr>gT<cr>:noh<cr>

set guioptions-=T

source ~/.gvimrc_local
