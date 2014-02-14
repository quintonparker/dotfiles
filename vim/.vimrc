set nocompatible " we don't need no vi backwards compatibility

execute pathogen#infect()

" airline settings
if has('gui_running')
    let g:airline_powerline_fonts = 1
else
    let g:airline#extensions#tabline#enabled = 1
endif

" fugitive settings
set statusline+=%{fugitive#statusline()}

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_quiet_warnings=1
nmap <c-s> :SyntasticCheck<CR>

let g:syntastic_python_flake8_args='--ignore=E501'
let g:syntastic_python_pep8_args='--ignore=E501'

" ctrlp.vim settings
let g:ctrlp_cmd='CtrlPMixed'
let g:ctrlp_working_path_mode=0
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_dotfiles=1
let g:ctrlp_user_command=['.git/', 'cd %s && git ls-files']
let g:ctrlp_open_new_file='t'
let g:ctrlp_open_multiple_files='tj'
let g:ctrlp_max_files = 0

" snipmate settings
autocmd BufNewFile,BufRead *.phtml  set ft=php.html.js.css

" varnish vcl syntax highlighting
so ~/.vim/bundle/vim-varnish/ftdetect/vcl.vim
au! Syntax vcl source ~/.vim/bundle/vim-varnish/syntax/vcl.vim

" disabled because it's too laggy. perhaps revisit and figure out why
" autocomplete funcs and identifiers for languages
" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType html,markdown set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" autocmd FileType c set omnifunc=ccomplete#Complete

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

" display soft-warning that i'm going beyond 100 columns
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

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

nnoremap <leader>a :Ack<space>
nnoremap <leader>g :Ag<space>

nnoremap <leader>t :TagbarToggle<CR>
" enter paste mode
nnoremap <leader>p :set paste<CR>
" leave paste mode
nnoremap <leader>pp :set nopaste<CR>
" shortcut to switch off search highlighting
nnoremap <leader>h :noh<cr>
" delete this buffer
nnoremap <leader>d :bd<CR>
" delete all open buffers
nnoremap <leader>dd :bufdo bd<CR>
 " clear all lines in the buffer. akin to "clear" in terminal
nnoremap <leader>c gg dG<CR>
" list buffers
nnoremap <leader>b :ls<CR>
" discard any changes to current buffer
nnoremap <leader>e :e! %<CR>
" bring up netwrw!
nnoremap <leader>x :Explore<CR>


" python tools
nnoremap <leader>f8 :!flake8 --ignore=E501 %<CR>
nnoremap <leader>p8 :!pep8 --ignore=E501 %<CR>

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
set guifont=Monaco\ for\ Powerline:h15
colorscheme desert
set background=light

" php-specific highlighting
autocmd FileType php let php_sql_query=1
autocmd FileType php let php_htmlInStrings=1
autocmd FileType php let php_noShortTags=0
autocmd FileType php let php_folding=1

" close some folds but not all
set foldlevelstart=1

" disable auto directory switching
set noautochdir

" damien conway's simultaneous edit preventer
" augroup NoSimultaneousEdits
    " autocmd!
    " autocmd SwapExists * let v:swapchoice = 'o'
    " autocmd SwapExists * echo 'Duplicate edit session (readonly)'
    " autocmd SwapExists * echohl None
    " autocmd SwapExists * sleep 1
" augroup END

source ~/.vimrc_local
