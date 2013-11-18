set columns=120
set lines=120

colorscheme desert
set background=dark

set cursorline

nnoremap <leader>rr :so $MYVIMRC<cr>:so $MYGVIMRC<cr>:noh<cr>
nnoremap <leader>ee :tabnew $MYVIMRC<cr>:tabnew $MYGVIMRC<cr>gT<cr>:noh<cr>

nnoremap <leader>f :maca toggleFileBrowser:<cr>
" broken in recent builds of macvim splitbrowser :/
" https://github.com/alloy/macvim/wiki/Usage
" nnoremap <leader>fr :maca revealInFileBrowser:<cr>

set guioptions-=T

source ~/.gvimrc_local
