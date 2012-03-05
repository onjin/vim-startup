if v:progname =~? "evim"
  finish
endif
let mapleader = ","

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" github repos
Bundle 'Lokaltog/vim-powerline'
Bundle 'michaeljsmith/vim-indent-object'
Bundle 'ervandew/supertab'
" {{
let g:Powerline_symbols = 'fancy'
set laststatus=2 " Always show status line
" }}

Bundle 'scrooloose/syntastic'
" {{
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_phpcs_disable=1
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=2
let g:syntastic_enable_balloons = 1
let g:syntastic_auto_jump=0
let g:syntastic_loc_list_height=6
let g:syntastic_quiet_warnings=0

map <F12> :w<CR>:Errors<CR>
imap <F12> <ESC>:w<CR>:Errors<CR>
map <C-F12> :w<CR>:ToggleErrors<CR>
imap <C-F12> <ESC>:w<CR>:ToggleErrors<CR>
" }}

Bundle 'scrooloose/nerdtree'
" {{
let NERDTreeMinimalUI = 1
nmap <C-p> :NERDTreeToggle<CR>
nmap <Leader>sit :NERDTreeFind
" }}

Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neocomplcache-snippets-complete'
" {{
" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ?
" \ "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

" }}
Bundle 'altercation/vim-colors-solarized'

" vim-scripts
Bundle 'vcscommand.vim'
Bundle 'Tagbar'
" {{
nnoremap <silent> <F4> :TagbarOpenAutoClose<CR>
" }}

"


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


" ---------------
" Color
" ---------------
set background=dark
colorscheme solarized

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
  set spell
endif

" ---------------
" Behaviors
" ---------------
syntax enable

set hlsearch
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

set splitbelow                  " Split windows at bottom
set splitright

" set guifont=Monaco_Linux-Powerline              " font

set ts=4 sts=4 sw=4 expandtab
set nu                          " show lines number
set ff=unix                     " unix end of line
" set list
nmap <leader>l :set list!<CR>   " Shortcut to rapidly toggle `set list
set ignorecase

" ---------------
" folding
" --------------- {{
set foldenable                                   " Turn on folding
set foldmethod=marker                            " Fold on the marker
set foldlevel=100                                " Don't autofold anything (but I can still fold manually)
set foldlevelstart=99                            " Remove folds
set foldopen=block,hor,mark,percent,quickfix,tag " what movements open fold

" ---------------
" mouse
" --------------- {{
set mouse=a                     " enable mouse
set mousehide                   " Hide mouse after chars typed
set mousemodel=popup            " the right mouse button causes a small pop-up menu to appear

" ---------------
" work with windows
" --------------- {{
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" }}

" ---------------
" Switch between buffers
" --------------- {{
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
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
" easy editing .vimrc file
" --------------- {{
nmap <Leader>rc :source ~/.vimrc<CR>
nmap <Leader>rt :tabnew ~/.vimrc<CR>
nmap <Leader>re :e ~/.vimrc<CR>
" }}



" ----------------------------------------
" Plugins
" ----------------------------------------


" ---------------
" Vundle
" --------------- {{
nmap <Leader>bi :BundleInstall<CR>
nmap <Leader>bs :BundleSearch<CR>
nmap <Leader>bu :BundleInstall!<CR> " Because this also updates
nmap <Leader>bc :BundleClean
" }}


" ----------------------------------------
" Functions
" ----------------------------------------

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

nnoremap <silent> <F3> :call <SID>StripTrailingWhitespaces()<CR>
autocmd BufWritePre * :call <SID>StripTrailingWhitespaces()
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

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()


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
