if v:progname =~? "evim"
  finish
endif
let mapleader = ","

set nocompatible               " be iMproved
filetype off                   " required!

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" Recommended to install
" After install, turn shell ~/.vim/bundle/vimproc, (n,g)make -f your_machines_makefile
NeoBundle 'Shougo/vimproc'

NeoBundle 'tpope/vim-fugitive' " fugitive.vim: a Git wrapper so awesome, it should be illegal

NeoBundle 'scrooloose/syntastic'

let g:syntastic_phpcs_disable=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_enable_balloons = 1
let g:syntastic_auto_jump=0
let g:syntastic_loc_list_height=6
let g:syntastic_quiet_warnings=0
let g:syntastic_python_checkers=['flake8']
let g:syntastic_python_flake8_args='--ignore=E128,E501,E127'

NeoBundle 'michaeljsmith/vim-indent-object'
" NeoBundle 'Lokaltog/vim-powerline'
" {{
"let g:Powerline_symbols = 'fancy'
"set laststatus=2 " Always show status line
"set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
" set statusline+=%{fugitive#statusline()}

" }}

" {{ airline
NeoBundle 'bling/vim-airline'
""""""""""""""""""""""""""""""
" airline
""""""""""""""""""""""""""""""
set laststatus=2 " Always show status line
let g:airline_theme             = 'powerlineish'
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1
let g:airline#extensions#tabline#enabled = 1

" vim-powerline symbols
let g:airline_left_sep          = '⮀'
let g:airline_left_alt_sep      = '⮁'
let g:airline_right_sep         = '⮂'
let g:airline_right_alt_sep     = '⮃'
let g:airline_branch_prefix     = '⭠'
let g:airline_readonly_symbol   = '⭤'
let g:airline_linecolumn_prefix = '⭡'
" }} airline

NeoBundle 'sjl/gundo.vim'
nnoremap <F7> :GundoToggle<CR>

NeoBundle 'scrooloose/nerdtree'
" {{
let NERDTreeMinimalUI = 1
" }}

NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/neocomplcache'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/unite.vim'
let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])

NeoBundle 'Shougo/vimproc'
NeoBundle 'Shougo/unite-outline'

" {{

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ?
" \ "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"
let g:SuperTabDefaultCompletionType = "context"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" }}
NeoBundle 'altercation/vim-colors-solarized'

" vim-scripts
NeoBundle 'vcscommand.vim'
NeoBundle 'Tagbar'

"
" Bundle 'Vimerl'
NeoBundle 'bcnice20/go-vim'
NeoBundle 'kchmck/vim-coffee-script'

NeoBundle 'VimClojure'
" Settings for VimClojure
let g:vimclojure#HighlightBuiltins=1      " Highlight Clojure's builtins
let g:vimclojure#ParenRainbow=1           " Rainbow parentheses'!

NeoBundle 'jpalardy/vim-slime'
let g:slime_target = "screen"

NeoBundle 'UltiSnips'
let g:UltiSnipsSnippetsDir="~/.vim/bundle/UltiSnips/UltiSnips/"
let g:UltiSnipsExpandTrigger="<c-tab>"
let g:UltiSnipsListSnippets="<c-s-tab>"

NeoBundle 'Conque-Shell'

NeoBundle 'davidhalter/jedi-vim'
let g:jedi#auto_initialization = 1
let g:jedi#goto_command = "<leader>g"
let g:jedi#get_definition_command = "<leader>d"
let g:jedi#use_tabs_not_buffers = 0
let g:jedi#popup_on_dot = 0
let g:jedi#rename_command = "<leader>r"
let g:jedi#related_names_command = "<leader>n"
let g:jedi#show_function_definition = "0"

NeoBundle 'nathanaelkane/vim-indent-guides'

NeoBundle 'mhinz/vim-startify'

" require python2.7
NeoBundle 'dbsr/vimpy'

let g:vimpy_prompt_resolve = 1

NeoBundle 'ervandew/supertab'
filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
set nocompatible
set autoindent
set autowrite " Automatically save before commands like :next and :make
set backspace=indent,eol,start " allow backspacing over everything in insert mode

NeoBundle 'xolox/vim-notes'
NeoBundle 'xolox/vim-misc'

:let g:notes_directories = ['~/Dropbox/Notes', '~/Dropbox/Shared.Notes']


"NeoBundle 'vim-scripts/vim-signify' " Advanced plugin for showing VCS diffs in the SignColumn

NeoBundle 'python.vim--Vasiliev' " 1.17  Enhanced version of the python syntax highlighting script
NeoBundle 'blackboard.vim' " 1.17  Enhanced version of the python syntax highlighting script
" {{{ python-mode
NeoBundle 'klen/python-mode'

let g:pymode_lint_onfly = 0
let g:pymode_lint_write = 1
let g:pymode_utils_whitespaces = 0

" }}}

NeoBundle 'sotte/presenting.vim' " A simple tool for presenting slides in vim based on text files.

" NeoBundle 'onjin/pycomplexity.vim'
NeoBundle 'garybernhardt/pycomplexity', {'rtp': 'pycomplexity.vim/'}
NeoBundle 'derekwyatt/vim-scala'
" NeoBundle 'cespare/vjde' " Mirror of http://www.vim.org/scripts/script.php?script_id=1213
NeoBundle 'plasticboy/vim-markdown' " Markdown Vim Mode



nnoremap <silent> <F8> :Unite neobundle/update -log -wrap -auto-quit<CR>


" ---------------
" Color
" ---------------
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

" colorscheme solarized
colorscheme blackboard
set background=dark

" python.vim-vasiliev options
let python_highlight_space_errors=1
let python_highlight_all=1

" ---------------
" Backups
" ---------------
set backup        " keep a backup file
set backupdir=~/.vimbackup,/tmp
set directory=~/.vimbackup//,/tmp//
" ---------------
" UI
" ---------------
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
                                    "Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
set modelines=5                     " Debian likes to disable this, The number of lines at the top and bottom to look for modelines.
set scrolloff=1                     " Number of lines to keep above or below the cursor.

" -------------
"  lang
" -------------
if exists("+spelllang")
  let g:spellfile_URL = 'http://ftp.vim.org/vim/runtime/spell'
  set spelllang=en_us,pl
  set nospell
endif

" ---------------
" Behaviors
" ---------------
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


set ts=4 sts=4 sw=4 expandtab
set nu                          " show lines number
set ff=unix                     " unix end of line
set list
set listchars=tab:>\ ,trail:~

" ---------------
" folding
" --------------- {{
"set foldenable                                   " Turn on folding
"set foldmethod=syntax                            " Fold on the marker
"set foldlevel=100                                " Don't autofold anything (but I can still fold manually)
"set foldlevelstart=99                            " Remove folds
"set foldopen=block,hor,mark,percent,quickfix,tag " what movements open fold

" ---------------
" mouse
" --------------- {{
set mouse=a                     " enable mouse
set mousehide                   " Hide mouse after chars typed
set mousemodel=popup            " the right mouse button causes a small pop-up menu to appear

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



" ---------------
" Trailing Whitespaces
" --------------- {{
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
" }}
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
   \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
    let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'


" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
let g:neocomplcache_omni_patterns = {}
endif
"let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
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
" F12       - errors window toggle
" Shift+F12 - fix pep8 errors
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
" ,gs       - git status
" ,gc       - git commit
" ,gd       - git diff
" ,gb       - git blame
"
" <ctr>+J   - switch && maximize window
" <ctr>+K   - switch && maximize window
"
" <ctr>+n   - hlsearch toggle
" ,l        - set list toggle
"
" ,re       - edit ~/.vimrc
" ,rt       - open ~/.vimrc in tab
" ,rc       - reload ~/.vimrc
" ,rh       - edit ~/.vimrc at mapping help
"
" ,c        - close current buffer
" ,wc       - write & close current buffer
" ,d        - go previous buffer && close current
" ,D        - close all buffers
" ,,        - switch between last two buffers
"
" python-mode plugins bindings
" K         - Show python docs (g:pymode_doc enabled)
" <C-Space> - Rope autocomplete (g:pymode_rope enabled)
" <C-c>g    - Rope goto definition (g:pymode_rope enabled)
" <C-c>d    - Rope show documentation (g:pymode_rope enabled)
" <C-c>f    - Rope find occurrences (g:pymode_rope enabled)
" <Leader>r - Run python (g:pymode_run enabled)
" <Leader>b - Set, unset breakpoint (g:pymode_breakpoint enabled)
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

" Unite
nnoremap <C-p> :<C-u>Unite -buffer-name=files -start-insert file_rec/async<cr>
nnoremap <space>p :<C-u>Unite -no-split -buffer-name=files -start-insert file_rec/async<cr>
nnoremap <space>l :<C-u>Unite -buffer-name=files -start-insert file_mru<cr>
nnoremap <space>/ :Unite grep:.<cr>
nnoremap <space>y :Unite history/yank<cr>
nnoremap <space>s :Unite -quick-match buffer<cr>

" git/fugitive
nmap <Leader>gs :Gstatus<CR>
nmap <Leader>gc :Gcommit<CR>
nmap <Leader>gd :Gdiff<CR>
nmap <Leader>gb :Gblame<CR>

" switch and maximixe window
set winminheight=0
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

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
" map <F12> :w<CR>:Errors<CR>
" imap <F12> <ESC>:w<CR>:Errors<CR>
map <F12> :PyLint<CR>
map <S-F12> :PyLintAuto<CR>

"map <C-F12> :w<CR>:ToggleErrors<CR>
"imap <C-F12> <ESC>:w<CR>:ToggleErrors<CR>


nmap <Leader>im :VimpyCheckLine<CR>

map <silent> <C-n> :set invhlsearch<CR>
nmap <leader>l :set list!<CR>   " Shortcut to rapidly toggle `set list
" imap <2-LeftMouse> <C-o>:SearchNotes<CR>
" nmap <2-LeftMouse> :SearchNotes<CR>

" -------------------
" font switcher
" -------------------
map <silent> <S-F6> :set guifont=Anonymous\ Pro\ 12<CR>
map <silent> <S-F7> :set guifont=Inconsolata\ 12<CR>
map <silent> <S-F8> :set guifont=monospace\ 12<CR>

" ---------------
" easy editing .vimrc file
" --------------- {{
nmap <Leader>rc :source ~/.vimrc<CR>
nmap <Leader>rt :tabnew ~/.vimrc<CR>
nmap <Leader>re :e ~/.vimrc<CR>
nmap <Leader>rh :e +379 ~/.vimrc<CR>
" }}
" ---------------
" Switch between buffers
" --------------- {{
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
nmap <leader>c :bdelete<CR> " Close current buffer
nmap <leader>wc :write<CR>:bdelete<CR> " Write & close current buffer
nmap <leader>d :bprevious<CR>:bdelete #<CR> " Close buffer
nmap <leader>D :bufdo bd<CR>                " Close all buffers
nnoremap <leader><leader> <C-^>             " Switch between last two buffers
" }}

" ---------------
" move lines
" --------------- {{
nmap <A-j> ]e==
nmap <A-k> [e==
imap <A-j> <Esc>]e==i
imap <A-k> <Esc>[e==i
vmap <A-j> ]egv=gv
vmap <A-k> [egv=gv
" }}
" ---------------
" work with windows
" --------------- {{
" map <C-h> <C-w>h
" map <C-j> <C-w>j
" map <C-k> <C-w>k
" map <C-l> <C-w>l
" }}

" Neosnippets key-mappings.
"
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: "\<TAB>"

if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" nerttreee
" nmap <C-P> :NERDTreeToggle<CR>
" nmap <Leader>sit :NERDTreeFind<CR>
" }} Mapping


" search recursively upwards for the tags
set tags=tags;/


NeoBundleCheck
