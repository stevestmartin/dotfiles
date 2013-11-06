""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme base16-default
set background=dark

set cmdheight=1 		" Height of command bar
set shortmess=a                 " Show shorter messages
set hidden			" Handle multiple buffers better
set ruler 			" Show the cursor position all the time
set scrolloff=5			" set 5 lines to the cursur (move when moving verticaly)
set sidescrolloff=5		" set 5 columns to the cursur (move when moving verticaly)
set wildmenu 			" Enhanced commandline completion
set wildmode=list:longest	" Complete files like a shell
set wildignore=*.0,*~,.pyc 	" Ignore compiled files
set ignorecase 			" Case-insensitive searching
set smartcase 			" But case-sensitive if expression contains a capital letter
set incsearch 			" Highlight matches as you type
set hlsearch 			" Highlight matches
set showmatch 			" Briefly jump to matching brace
set matchtime=2 		" Speed things up
set lazyredraw 			" Don't redraw while executing macros (good performance)
set ttimeout
set ttimeoutlen=1
set timeoutlen=500              " Don't wait so long for next keypress
set magic			" Regular expressions
set showcmd 			" Display incomplete commands
set noshowmode 			" Don't display the mode we're in (done in airline)
set nowrap 			" Turn off line wrapping
set mouse=a 			" Allow mouse scrolling
set title 			" Set the terminal's title
set noerrorbells 		" No beeping
set novisualbell 		" No annoying bells
set t_vb=
set winminheight=0
set relativenumber
set laststatus=2                " Show status line all the time
set ambiwidth=single
set helpheight=30 		" Set window height when opening vim help windows
set linebreak  			" Wrap lines longer than window
set showbreak=↪\ \ 		" string to put before wrapped screen lines
set display+=lastline 		" show last line even if it doesnt fit in the window
set number 			" show line numbers

" Define characters to show when you show formatting
" stolen from https://github.com/tpope/vim-sensible
if &listchars ==# 'eol:$'
  set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  if &termencoding ==# 'utf-8' || &encoding ==# 'utf-8'
    let &listchars = "tab:\u21e5,trail:\u2423,extends:\u21c9,precedes:\u21c7,nbsp:\u26ad"
  endif
endif
