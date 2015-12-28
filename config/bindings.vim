
" Key Bindings
"---------------------------------------------------------

" pasting
set pastetoggle=<F5>

map <silent> <C-n> :set invhlsearch<CR>

" easy .vimrc editing {{{1 "
nmap <Leader>rc :source ~/.vim/vimrc<CR>
" 1}}} "

" {{{ splitting
nmap <leader>/ :vsplit<CR>
" }}}
"
vmap <Leader>y "+y
nmap <Leader>p "+p
nmap <Leader>P "+P
vmap <Leader>p "+p
vmap <Leader>P "+P

" 13<enter> <enter> <backspace>
nnoremap <CR> G
nnoremap <BS> gg
