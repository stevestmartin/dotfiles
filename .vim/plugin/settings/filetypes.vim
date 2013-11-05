au BufRead,BufNewFile *.prawn set filetype=ruby
au BufRead,BufNewFile *.thor set filetype=ruby
au BufRead,BufNewFile *.jbuilder set filetype=ruby
au BufRead,BufNewFile *.csvbuilder set filetype=ruby
au BufRead,BufNewFile *.ejs set filetype=html
au BufRead,BufNewFile Guardfile set filetype=ruby

" set ruby compiler
autocmd FileType ruby compiler ruby
