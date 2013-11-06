""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf8
set ffs=unix,mac,dos

set directory=~/.vim/.cache/swap
set noswapfile
set tags=tags;/
set showfulltag
set modeline
set modelines=5

" backups
set backup
set backupdir=~/.vim/.cache/backup

" undo file
if exists('+undofile')
  set undofile
  set undodir=~/.vim/.cache/undo
endif

try
  lang en_us
catch
endtry

autocmd MyAutoCmd BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc
      \ so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fast saving
nmap <leader>w :w!<cr>

" Fast quiting
nmap <leader>q :q!<cr>
