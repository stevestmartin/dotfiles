let g:unite_enable_start_insert = 1
let g:unite_prompt='» '
let g:unite_winheight = 10
let g:unite_split_rule = 'botright'
let g:unite_update_time = 200
let g:unite_cursor_line_highlight = 'TabLineSel'
let g:unite_source_file_mru_filename_format = ':~:.'
let g:unite_source_file_mru_limit = 1000
let g:unite_source_file_mru_time_format = ''

let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
let g:unite_source_grep_recursive_opt = ''

nnoremap <leader>F :Unite file_rec/async file/new<cr>
nnoremap <leader>ff :Unite file_rec file/new<cr>
nnoremap <leader>fb :Unite buffer<cr>
nnoremap <leader>fo :Unite outline<cr>
nnoremap <leader>fn :Unite file/new<cr>
nnoremap <leader>ft :Unite tag<cr>

" Overwrite settings.
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " ctrl+s to open in split
  imap <silent><buffer><expr> <C-s>	unite#do_action('split')

  " hit o to open
  nnoremap <silent><buffer><expr> o 	unite#do_action('open')

  " hit p to show preview window
  nnoremap <silent><buffer><expr> p
    \ empty(filter(range(1, winnr('$')),
    \ 'getwinvar(v:val, "&previewwindow") != 0')) ?
    \ unite#do_action('preview') : ":\<C-u>pclose!\<CR>"
endfunction
