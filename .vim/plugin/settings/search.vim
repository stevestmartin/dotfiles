""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set gdefault                    " Assume the /g flag on :s substitutions to replace all matches in a line
set grepprg=ag                  " Use silver_searcher instead of grep

let g:ackprg = 'ag --nogroup --nocolor --column'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shortcuts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Map <space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?
