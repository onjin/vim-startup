" header {{{
" vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4:foldmethod=marker
"
" The MIT License (MIT)
"
" Copyright (c) [year] [fullname]
"
" Permission is hereby granted, free of charge, to any person obtaining a copy
" of this software and associated documentation files (the "Software"), to deal
" in the Software without restriction, including without limitation the rights
" to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
" copies of the Software, and to permit persons to whom the Software is
" furnished to do so, subject to the following conditions:
"
" The above copyright notice and this permission notice shall be included in all
" copies or substantial portions of the Software.
"
" THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
" IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
" FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
" AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
" LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
" OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
" SOFTWARE.
"
" header }}}

" .vimrc.before {{{
if filereadable(expand("~/.vimrc.before"))
    source ~/.vimrc.before
endif
" .vimrc.before }}}

" .vimrc.bundles {{{
if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif
" .vimrc.bundles }}}


" settings {{{
set laststatus=2 " Always show status line
set background=dark
set autowrite " Automatically save before commands like :next and :make
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set backup        " keep a backup file
set backupdir=~/.vim/backup,/tmp
set directory=~/.vim/backup//,/tmp//
set ruler                           " show the cursor position all the time
if has("balloon_eval") && has("unix")
  set ballooneval
endif

if exists(" &breakindent")
  set breakindent showbreak=+++
elseif has("gui_running")
  set showbreak=+++
endif

set cmdheight=1                     " command line height
set complete-=i                     " Searching includes can be slow
set display=lastline                "
set joinspaces                      " Put spaces between lines joined with the > command.
set lazyredraw                      " Do not redraw the screen during macro execution.
set listchars=tab:▸\ ,eol:¬,trail:· " Define how list mode appears, Use the same symbols as TextMate for tabstops and EOLs
" settings }}}

let g:startify_list_order = ['sessions', 'bookmarks', 'files', 'dir']
let g:startify_change_to_vcs_root = 1


nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>gd :Gdiff<CR>
nmap <Leader>gb :Gblame<CR>

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0


let g:airline_theme             = 'powerlineish'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1

" vim-powerline symbols
if !exists('g:ariline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_left_sep          = '⮀'
let g:airline_left_alt_sep      = '⮁'
let g:airline_right_sep         = '⮂'
let g:airline_right_alt_sep     = '⮃'
let g:airline_symbols.branch    = '⭠'
let g:airline_symbols.readonly  = '⭤'
let g:airline_symbols.linenr    = '⭡'
" 1}}} "

" NeoBundle 'sjl/gundo.vim' {{{1 "
nnoremap <F7> :GundoToggle<CR>
" 1}}} "

" NeoBundle 'scrooloose/nerdtree' {{{1 "
let NERDTreeMinimalUI = 1
nnoremap <F2> :NERDTreeToggle<CR>
" 1}}} "


" NeoBundle 'Shougo/unite.vim' {{{1 "

let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])


" mapping
nnoremap <silent> <F8> :Unite neobundle/update -log -wrap -auto-quit<CR>
nnoremap <C-p> :<C-u>Unite -buffer-name=files -start-insert file_rec/async<cr>
nnoremap ,p :<C-u>Unite -no-split -buffer-name=files -start-insert file_rec/async<cr>
nnoremap ,l :<C-u>Unite -buffer-name=files -start-insert file_mru<cr>
nnoremap ,/ :Unite grep:.<cr>
nnoremap ,h :Unite history/yank<cr>
nnoremap ,s :Unite -quick-match buffer<cr>
" 1}}} "



" Settings for VimClojure
let g:vimclojure#HighlightBuiltins=1      " Highlight Clojure's builtins
let g:vimclojure#ParenRainbow=1           " Rainbow parentheses'!
" 1}}} "

" NeoBundle 'jpalardy/vim-slime' {{{1 "
let g:slime_target = "screen"
" 1}}} "


" NeoBundle 'UltiSnips' {{{1 "

let g:UltiSnipsSnippetsDir="~/.vim/bundle/vim-snippets/UltiSnips/"
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" Prevent UltiSnips from stealing ctrl-k.
augroup VimStartup
    autocmd!
    autocmd VimEnter * sil! iunmap <c-k>
augroup end

" 1}}} "

:let g:notes_directories = ['~/Dropbox/Notes', '~/Dropbox/Shared.Notes']


" pymode {{{
let g:pymode_rope_completion = 1
let g:pymode_rope_complete_on_dot = 0
let g:pymode_rope_completion_bind = '<C-P>'
let g:pymode_lint_write = 0
let g:pymode_lint_on_fly = 0
let g:pymode_virtualenv = 1
let g:pymode_virtualenv_path = $VIRTUAL_ENV
let g:pymode_rope = 1
let g:pymode_rope_lookup_project = 0
" pymode }}}

" 1}}} "

" NeoBundle 'joonty/vim-phpqa.git' {{{1 "
let g:phpqa_codesniffer_args = "--standard=PSR1"
let g:phpqa_messdetector_autorun = 0
" 1}}} "

" NeoBundle 'beyondwords/vim-twig' {{{1 "

autocmd BufNewFile,BufRead *.twig set filetype=html.twig
" 1}}} "



" NeoBundle 'vim-scripts/PDV--phpDocumentor-for-Vim' {{{1 "
nmap <F9> :set paste<CR>:exe PhpDoc()<CR>:set nopaste<CR>


let g:pdv_cfg_Type = "mixed"
let g:pdv_cfg_Package = ""
let g:pdv_cfg_Version = "$id$"
" 1}}} "

" NeoBundle "juneguun/goyo.vim" {{{1 "

let g:goyo_width = 80
let g:goyo_margin_top = 4
let g:goyo_margin_bottom = 4

map <C-F10> :set nonumber!<CR>
nnoremap <C-n> :set nonumber!<CR>

map <F10> :Goyo<CR>
nnoremap <F10> :Goyo<CR>

map <ctrl>n :Goyo<CR>
nnoremap <ctrl>n :Goyo<CR>
" 1}}} "

" NeoBundle "tpope/vim-surround" {{{1 "
" 1}}} "

" NeoBundle "kien/rainbow_parentheses.vim" {{{1 "
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" 1}}} "
"
" Colors {{{1 "
if ! has("gui_running")
    set t_Co=256
    set guifont=monospace\ 12
else
    " disable menu/ect
    set guioptions=aci
    " Cursor preferences
    set guifont=Anonymous\ Pro\ 12
    " set guicursor=n-v-c:block-Cursor
    " set guicursor+=o:hor50-Cursor
    " set guicursor+=i-r:ver15-iCursor
    " set guicursor+=a:blinkwait700-blinkon700-blinkoff700
endif

" python.vim-vasiliev options
let python_highlight_space_errors=1
let python_highlight_all=1
" 1}}} "

" UI {{{
if !exists('g:vimstartup_no_python_bundles')
    colorscheme blackboard
else
    colorscheme desert
endif
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
set modelines=5                     " Debian likes to disable this, The number of lines at the top and bottom to look for modelines.
set scrolloff=1                     " Number of lines to keep above or below the cursor.
" UI }}} "

" lang {{{
if exists("+spelllang")
  let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
  set spelllang=en_us,pl
  set nospell
endif
" lang }}}

" behaviors {{{1 "
syntax enable

set nohlsearch
set textwidth=120
set autoread                    " Automatically reload changes if detected
set wildmenu                    " Turn on WiLd menu
set history=768                 " Number of things to remember in history.
set cf                          " Enable error files & error jumping.
set clipboard+=unnamed          " Yanks go on clipboard instead.
set autowrite                   " Writes on make/shell commands
" set timeoutlen=500            " Time to wait for a command (after leader for example)
" set ttimeoutlen=50            " Make Esc work faster
set formatoptions=crql
set suffixes+=.dvi              " Lower priority in wildcards
set showmatch                   " Show matching brackets.
set smartcase                   " Case insensitive searches become sensitive with capitals
set smarttab                    " sw at the start of the line, sts everywhere else
if v:version >= 700
  set viminfo=!,'20,<50,s10,h
endif
set virtualedit=block
set wildmode=longest:full,full
set wildignore+=*~
set winaltkeys=no
set sidescrolloff=5             " set printoptions=paper:letter
set ignorecase
if &columns < 124
    set columns=124
endif
set colorcolumn=80

set splitbelow                  " Split windows at bottom
set splitright


" python / PEP8 {{{
set textwidth=79
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set shiftround
set autoindent
" python / PEP8 }}}


set nu                          " show lines number
set ff=unix                     " unix end of line
set list
set listchars=tab:>\ ,trail:~
" 1}}} "

" mouse {{{1 "
set mouse=a                     " enable mouse
set mousehide                   " Hide mouse after chars typed
set mousemodel=popup            " the right mouse button causes a small pop-up menu to appear
" 1}}} "

" reopen files {{{1 "
" ---------------
" reopen file on last known position
" --------------- {{
" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif
" }}

" 1}}} "

" Trailing whitespaces {{{1 "
function! <SID>StripTrailingWhitespaces()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " Do the business:
  %s/\s\+$//e
  " Clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
" 1}}} "

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
set noerrorbells visualbell t_vb=

" quiet pleeeeeease
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

" {{ Mapping Help

" F3        - strip trailing white spaces
" F4        - tagbar toggle
" Shift+F4  - unite outline
" F5        - paste mode toggle
" F6        - check complexity
" F7        - graphical undo
" F10       - distraction free mode (goyo)
" F12       - errors window toggle
"
" Shift+F6  - guifonts Anonymous Pro 12
" Shift+F7  - guifonts Inconsolata 12
" Shift+F8  - guifonts monospace 12
"
" ctrl+s    - run vim shell as pop
" ctrl+p    - search files
"
" <space>p  - search files - nosplit
" <space>/  - search in files
" <space>s  - switch buffer
" <space>y  - yank history
" <space>l  - last edited files
"
" <space>gs       - git status
" <space>gc       - git commit
" <space>gd       - git diff
" <space>gb       - git blame
"1;2S
"1;2S
"
" <ctr>+J   - switch && maximize window
" <ctr>+K   - switch && maximize window
"
" <ctr>+n   - hlsearch toggle
" <space>l        - set list toggle
"
" <space>re       - edit ~/.vimrc
" <space>rt       - open ~/.vimrc in tab
" <space>rc       - reload ~/.vimrc
" <space>rh       - edit ~/.vimrc at mapping help
"
" <space>c        - close current buffer
" <space>wc       - write & close current buffer
" <space>d        - go previous buffer && close current
" <space>D        - close all buffers
" ,,        - switch between last two buffers
"
" python-mode plugins bindings
" K         - Show python docs (g:pymode_doc enabled)
" <C-Space> - Rope autocomplete (g:pymode_rope enabled)
" <C-c>g    - Rope goto definition (g:pymode_rope enabled)
" <C-c>d    - Rope show documentation (g:pymode_rope enabled)
" <C-c>f    - Rope find occurrences (g:pymode_rope enabled)
" <Leader>r - Run python (g:pymode_run enabled)
" [[        - Jump on previous class or function (normal, visual, operator modes)
" ]]        - Jump on next class or function (normal, visual, operator modes)
" [M        - Jump on previous class or method (normal, visual, operator modes)
" ]M        - Jump on next class or method (normal, visual, operator modes)
" aC C      - Select a class. Ex: vaC, daC, dC, yaC, yC, caC, cC (normal, operator modes)
" iC        - Select inner class. Ex: viC, diC, yiC, ciC (normal, operator modes)
" aM M      - Select a function or method. Ex: vaM, daM, dM, yaM, yM, caM, cM (normal, operator modes)
" iM        - Select inner function or method. Ex: viM, diM, yiM, ciM (normal, operator modes)

" VimShell
nnoremap <C-s> :VimShellPop<cr>



" switch and maximixe window
set winminheight=0
" map <C-J> <C-W>j<C-W>_
" map <C-K> <C-W>k<C-W>_

nnoremap <silent> <F3> :call <SID>StripTrailingWhitespaces()<CR>

nnoremap <silent> <F2> :set guioptions=aegimrLtT<CR>
nnoremap <silent> <S-F2> :set guioptions=aci<CR>
" Tagbar
nnoremap <silent> <F4> :TagbarOpenAutoClose<CR>
nnoremap <silent> <S-F4> :Unite outline<CR>

" pasting
nnoremap <F5> :set invpaste paste?<Enter>
imap <F5> <C-O><F5>
set pastetoggle=<F5>

nnoremap <silent> <F6> :Complexity<CR>

" errors
nnoremap <F12> :PymodeLint<CR>

nmap <Leader>im :VimpyCheckLine<CR>

map <silent> <C-n> :set invhlsearch<CR>
nmap <leader>l :set list!<CR>   " Shortcut to rapidly toggle `set list
" imap <2-LeftMouse> <C-o>:SearchNotes<CR>
" nmap <2-LeftMouse> :SearchNotes<CR>

" font switching {{{1 "
map <silent> <S-F6> :set guifont=Anonymous\ Pro\ 12<CR>
map <silent> <S-F7> :set guifont=Inconsolata\ 12<CR>
map <silent> <S-F8> :set guifont=monospace\ 12<CR>
" 1}}} "

" easy .vimrc editing {{{1 "
nmap <Leader>rc :source ~/.vimrc<CR>
nmap <Leader>rt :tabnew ~/.vimrc<CR>
nmap <Leader>re :e ~/.vimrc<CR>
nmap <Leader>rh :e +379 ~/.vimrc<CR>
" 1}}} "

" buffers switching {{{1 "
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
nmap <leader>c :bdelete<CR> " Close current buffer
nmap <leader>wc :write<CR>:bdelete<CR> " Write & close current buffer
nmap <leader>d :bprevious<CR>:bdelete #<CR> " Close buffer
nmap <leader>D :bufdo bd<CR>                " Close all buffers
nnoremap <leader><leader> <C-^>             " Switch between last two buffers
" 1}}} "

" move lines {{{1 "
nmap <A-j> ]e==
nmap <A-k> [e==
imap <A-j> <Esc>]e==i
imap <A-k> <Esc>[e==i
vmap <A-j> ]egv=gv
vmap <A-k> [egv=gv
" 1}}} "



" search recursively upwards for the tags
set tags=tags;/

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

iabbrev vimfooter # vim:expandtab:smartindent:tabstop=4:softtabstop=4:shiftwidth=4:

" .vimrc.local {{{
if filereadable(expand("~/.vimrc.local"))
    source ~/.vimrc.local
endif
" .vimrc.bundles }}}
