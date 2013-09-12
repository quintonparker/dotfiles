set nocompatible " we don't need no vi backwards compatibility

execute pathogen#infect()

" ag.vim settings
nmap <c-a> :Ag<space>

" airline settings
let g:airline#extensions#tabline#enabled = 1

if has('gui_running')
    let g:airline_powerline_fonts = 1
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

" ctrlp.vim settings
let g:ctrlp_cmd='CtrlPMixed'
let g:ctrlp_working_path_mode=0
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_dotfiles=0
let g:ctrlp_user_command=['.git/', 'cd %s && git ls-files']
let g:ctrlp_open_new_file='t'
let g:ctrlp_open_multiple_files='t'

" autocomplete funcs and identifiers for languages
" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType html,markdown set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP
"autocmd FileType c set omnifunc=ccomplete#Complete

set tabstop=4
set expandtab " use spaces to insert a tab
set wrap

set smartindent " smart auto-indenting for a new line
set smarttab
set copyindent " copy structure of existing lines when autoindenting a new line
set shiftwidth=4 " spaces to auto indent

set number " adds line numbers. woohoo

set wildmode=list:longest,full

set hlsearch

" shortcut keys to toggle paste mode on/off
map <F9> :set paste<CR>
map <F10> :set nopaste<CR>
imap <F9> <C-O>:set paste<CR>
imap <F10> <nop>
set pastetoggle=<F10>

" tagbar settings
nmap <F8> :TagbarToggle<CR>

set visualbell " kills the beeping

" set large-ish font
set guifont=Meslo\ LG\ L\ DZ\ Regular\ for\ Powerline:h15
colorscheme desert
set background=light

" php-specific highlighting
autocmd FileType php let php_sql_query=1
autocmd FileType php let php_htmlInStrings=1
autocmd FileType php let php_noShortTags=0
autocmd FileType php let php_folding=0

" set auto-highlighting of matching brackets for php only
autocmd FileType php DoMatchParen
autocmd FileType php hi MatchParen ctermbg=blue guibg=lightblue

" disable auto directory switching 
set noautochdir
