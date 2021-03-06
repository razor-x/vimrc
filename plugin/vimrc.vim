" Create and set cache directories.
if empty($XDG_CACHE_HOME)
  let $XDG_CACHE_HOME = $HOME . '/.cache'
endif

if !isdirectory($XDG_CACHE_HOME . '/vim')
  call mkdir($XDG_CACHE_HOME . '/vim', 'p')
endif

for dir in ['backup', 'swap', 'undo', 'session']
  if !isdirectory($XDG_CACHE_HOME . '/vim/' . dir)
    call mkdir($XDG_CACHE_HOME . '/vim/' . dir, 'p')
  endif
endfor

set backupdir=$XDG_CACHE_HOME/vim/backup
set directory=$XDG_CACHE_HOME/vim/swap
set undodir=$XDG_CACHE_HOME/vim/undo

let g:session_directory = $XDG_CACHE_HOME . '/vim/session'

" Enable filetype detection.
filetype plugin on

" Enable persistent undo history.
set undofile
