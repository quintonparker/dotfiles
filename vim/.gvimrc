set columns=100
set lines=120

colorscheme desert
set background=dark

set cursorline

nnoremap <leader>r :so $MYVIMRC<cr>:so $MYGVIMRC<cr>
nnoremap <leader>e :tabnew $MYVIMRC<cr>:tabnew $MYGVIMRC<cr>gT<cr>

nnoremap <leader>ff :maca toggleFileBrowser:<cr>
" broken in recent builds of macvim splitbrowser :/
" https://github.com/alloy/macvim/wiki/Usage
" nnoremap <leader>fr :maca revealInFileBrowser:<cr>

source ~/.gvimrc_local
