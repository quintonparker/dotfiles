set columns=100
set lines=120

colorscheme desert
set background=dark

set cursorline

" save sessions with .vis extension
map <leader>s :mksession!  session.vis<CR>

" automatically source vim sessions so I can open them with the finder
au BufRead *.vis so %
