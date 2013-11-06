call unite#util#set_default('g:unite_source_git_grep_max_candidates', 100)

function! unite#sources#git_grep#define()
  return s:source
endfunction

let s:source = {
    \ 'name': 'git_grep',
    \ 'description': 'candidates from git-grep',
    \ 'max_candidates': g:unite_source_git_grep_max_candidates,
    \ 'hooks': {},
    \ 'is_volatile': 1,
  \ }

function! s:source.hooks.on_init(args, context)
  call unite#util#system('git rev-parse')

  if unite#util#get_last_status() != 0
    call unite#util#print_error('Not a Git repoitory.')
  endif
endfunction

function! s:source.change_candidates(args, context)
  if !empty(a:context.input) && len(a:context.input) >= 3
      let l:result = unite#util#system('git grep --line-number --untracked --full-name --no-color -e "' . a:context.input . '"')
      let l:matches = split(l:result, '\r\n\|\r\|\n')
      let l:entries = map(l:matches, '[v:val, split(v:val, ":")]')
      return map(l:entries, '{
          \   "word": v:val[0],
          \   "source": "vcs_grep/git",
          \   "kind": "jump_list",
          \   "action__path": v:val[1][0],
          \   "action__line": v:val[1][1],
          \   "action__text": join(v:val[1][2:], ":"),
          \ }')
    else
      return []
    endif
endfunction
