""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab 			      " Use spaces instead of tabs
set smarttab 			        " Be smart when using tabs
set autoindent            " Always set autoindenting on
set smartindent
set shiftwidth=2 		      " 1 tab == 2 spaces
set tabstop=2 
set softtabstop=2 
set linebreak 			      " Linebreak on 500 characters
set textwidth=500
set nofoldenable          " Disable code folding
set shiftround            " When at 3 spaces and I hit >>, go to 4, not 5.
set whichwrap+=<,>,h,l    " Wrap to next/previous line when navigating at beginning /ending chars

if exists('$TMUX')
  set clipboard=
else
  set clipboard=unnamed   " sync with OS clipboard
endif
