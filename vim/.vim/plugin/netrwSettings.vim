" ---------------------------------------------
"  NetrwSettings:  by Charles E. Campbell, Jr.
" Press <F1> with cursor atop any line for help
" ---------------------------------------------

" Netrw Protocol Commands
let g:netrw_dav_cmd           = 'curl'
let g:netrw_fetch_cmd         = ''
let g:netrw_ftp_cmd           = 'ftp'
let g:netrw_http_cmd          = 'curl'
let g:netrw_rcp_cmd           = 'rcp'
let g:netrw_rsync_cmd         = 'rsync'
let g:netrw_scp_cmd           = 'scp -q'
let g:netrw_sftp_cmd          = 'sftp'
let g:netrw_ssh_cmd           = 'ssh'

"Netrw Transfer Control
let g:netrw_cygwin            = 0
let g:netrw_ftp               = 0
let g:netrw_ftpmode           = 'binary'
let g:netrw_ignorenetrc       = 0
let g:netrw_sshport           = '-p'
let g:netrw_use_nt_rcp        = 0
let g:netrw_win95ftp          = 1

" Netrw Messages
let g:netrw_use_errorwindow    = 1

" Netrw Browser Control
let g:netrw_alto              = 1
let g:netrw_altv              = 1
let g:netrw_browse_split      = 2
let g:netrw_browsex_viewer    = '(not defined)'
let g:netrw_compress          = 'gzip'
let g:netrw_decompress        = {'.xz': 'unxz', '.tar': 'tar -xf', '.gz': 'gunzip', '.bz2': 'bunzip2', '.zip': 'unzip'}
let g:netrw_dirhistmax        = 10
let g:netrw_fastbrowse        = 1
let g:netrw_fname_escape      = ' ?&;%'
let g:netrw_ftp_browse_reject = '^total\s\+\d\+$\|^Trying\s\+\d\+.*$\|^KERBEROS_V\d rejected\|^Security extensions not\|No such file\|: connect to address [0-9a-fA-F:]*: No route to host$'
let g:netrw_ftp_list_cmd      = 'ls -lF'
let g:netrw_ftp_sizelist_cmd  = 'ls -slF'
let g:netrw_ftp_timelist_cmd  = 'ls -tlF'
let g:netrw_glob_escape       = '[]*?`{~$\'
let g:netrw_hide              = 1
let g:netrw_keepdir           = 1
let g:netrw_list_cmd          = 'ssh USEPORT HOSTNAME ls -FLa'
let g:netrw_list_hide         = '.*\.git$'
let g:netrw_liststyle         = 3
let g:netrw_localcopycmd      = 'cp'
let g:netrw_local_mkdir       = 'mkdir'
let g:netrw_localmovecmd      = 'mv'
let g:netrw_local_rmdir       = 'rmdir'
let g:netrw_maxfilenamelen    = 32
let g:netrw_menu              = 1
let g:netrw_mkdir_cmd         = 'ssh USEPORT HOSTNAME mkdir'
let g:netrw_preview           = 0
let g:netrw_rename_cmd        = 'ssh USEPORT HOSTNAME mv'
let g:netrw_retmap            = 0
let g:netrw_rm_cmd            = 'ssh USEPORT HOSTNAME rm'
let g:netrw_rmdir_cmd         = 'ssh USEPORT HOSTNAME rmdir'
let g:netrw_rmf_cmd           = 'ssh USEPORT HOSTNAME rm -f'
let g:netrw_silent            = 0
let g:netrw_sort_by           = 'name'
let g:netrw_sort_direction    = 'normal'
let g:netrw_sort_options      = ''
let g:netrw_sort_sequence     = '[\/]$,\<core\%(\.\d\+\)\=\>,\.h$,\.c$,\.cpp$,*,\.o$,\.obj$,\.info$,\.swp$,\.bak$,\~$'
let g:netrw_special_syntax    = 0
let g:netrw_ssh_browse_reject = '^total\s\+\d\+$'
let g:netrw_scpport           = '-P'
let g:netrw_sepchr            = 'ÿ'
let g:netrw_sshport           = '-p'
let g:netrw_timefmt           = '%c'
let g:netrw_tmpfile_escape    = ' &;'
let g:netrw_use_noswf         = 0
let g:netrw_xstrlen           = 0
let g:netrw_winsize           = 30

" For help, place cursor on line and press <F1>
