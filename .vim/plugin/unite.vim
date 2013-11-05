call unite#filters#matcher_default#use(['matcher_context'])
call unite#filters#sorter_default#use(['sorter_word'])
call unite#filters#converter_default#use(['converter_tail'])
call unite#set_profile('files', 'smartcase', 1)
call unite#custom#source('line,outline','matchers','matcher_fuzzy')

let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_enable_start_insert = 1
let g:unite_source_history_yank_enable = 1
let g:unite_source_rec_max_cache_files = 5000
let g:unite_prompt='» '

let g:unite_source_grep_command = 'ag'
let g:unite_source_grep_default_opts = '--nocolor --smart-case --context 4'
let g:unite_source_grep_recursive_opt = ''
let g:unite_enable_short_source_names = 1
let g:unite_winheight = 10
let g:unite_split_rule = 'botright'
let g:unite_source_rec_async_command = 'git ls-files . -co --exclude-standard'

nnoremap <leader>F :Unite -toggle file_rec/async<cr>
nnoremap <leader>ff :Unite -toggle file_rec/async<cr>
nnoremap <leader>fb :Unite -toggle buffer<cr>
nnoremap <leader>fo :Unite -toggle outline<cr>
nnoremap <leader>fn :Unite -toggle file/new<cr>

" Overwrite settings.
autocmd FileType unite call s:unite_my_settings()
function! s:unite_my_settings()
  " ctrl+s to open in split
  imap <silent><buffer><expr> <C-s>	unite#do_action('split')

  " hit p to show preview window
  nnoremap <silent><buffer><expr> p
    \ empty(filter(range(1, winnr('$')),
    \ 'getwinvar(v:val, "&previewwindow") != 0')) ?
    \ unite#do_action('preview') : ":\<C-u>pclose!\<CR>"
endfunction
