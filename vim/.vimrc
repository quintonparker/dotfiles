set nocompatible " we don't need no vi backwards compatibility

execute pathogen#infect()

let g:airline#extensions#tabline#enabled = 1

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" these settings to complement, enable and/or override vim-sensible
set tabstop=4
set expandtab " use spaces to insert a tab
set wrap
set smartindent " smart auto-indenting for a new line
set smarttab
set copyindent " copy structure of existing lines when autoindenting a new line
set shiftwidth=4 " spaces to auto indent
set number " adds line numbers. woohoo
set wildmode=list:longest,full
set list " show sneaky whitespace chars (see vim-sensible's listchars)
set hlsearch
set gdefault " applies substitutions globally on lines by default
set undofile " enable persistent undo functionality
set undodir=~/.vim/undodir

" display soft-warning that i'm going beyond 120 columns
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 120)

" START KEY mappings

set timeout timeoutlen=400 ttimeoutlen=400

" allow bracket matching using tab instead of %
nnoremap <tab> %
vnoremap <tab> %

" rm whitespace on line-endings in current buffer
nnoremap <leader><space> :%s,\s\+$,,gc<CR>
" replace tabs with 4 spaces in current buffer
nnoremap <leader><tab> :retab<CR>

" save a key hit when saving a file
nnoremap ; :

" enter paste mode
nnoremap <leader>p :set paste<CR>
" leave paste mode
nnoremap <leader>pp :set nopaste<CR>
" shortcut to switch off search highlighting
nnoremap <leader>h :noh<cr>

"" discard any changes to current buffer
 " clear all lines in the buffer. akin to "clear" in terminal
nnoremap <C-c> gg dG<CR>
" abandon edits since opening
nnoremap <leader>e :e! %<CR>
" list open buffers
nnoremap <leader>b :ls<CR>
nnoremap <tab> :bnext<CR>
nnoremap <s-tab> :bprevious<CR>
nnoremap <backspace> :bprevious<CR>
nnoremap <leader>d :bdelete<CR>
" delete all open buffers
nnoremap <leader>dd :bufdo bd<CR>

" bring up netwrw!
let g:netrw_banner = 0
nnoremap <leader>x :Explore<CR>

" edit $MYVIMRC on the fly in any window
nnoremap <leader>ee :tabnew $MYVIMRC<cr>:noh<cr>
nnoremap <leader>rr :so $MYVIMRC<cr>:noh<cr>

" visual select all shortcut
nnoremap == ggVG$<cr>

" automatically source vim sessions so I can open them with the finder
au BufRead *.vis so %
" save sessions with .vis extension
map <leader>s :mksession! session.vis<CR>

" force me to use vim correctly
" no to cursor keys even in insert mode
nnoremap <up> <C-u>
nnoremap <down> <C-d>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" END KEY mappings

set visualbell " kills the beeping

" set large-ish font
set guifont=Menlo:h15
colorscheme desert
set background=light

" php-specific highlighting
autocmd FileType php let php_sql_query=1
autocmd FileType php let php_htmlInStrings=1
autocmd FileType php let php_noShortTags=0
autocmd FileType php let php_folding=1

autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType javascript setlocal expandtab shiftwidth=2 softtabstop=2

" close some folds but not all
set foldlevelstart=1

" disable auto directory switching
set noautochdir

" auto reread files changed outside of vim
set autoread

source ~/.vimrc_local
