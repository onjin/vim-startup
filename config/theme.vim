if exists('g:vim_installing') || exists('g:colors_name')
	finish
endif

set t_Co=256
set background=dark

colorscheme blackboard
highlight BadWhitespace ctermfg=darkred ctermbg=black guifg=#382424 guibg=black

" base16 themes - Access colors present in 256 colorspace
let g:base16colorspace = 256
let g:base16_shell_path = $VARPATH.'/plugins/base16-shell/'

set guioptions=aci
set guifont=Anonymous\ Pro\ 12

" UI elements "{{{
set showbreak=↪
set fillchars=vert:│,fold:─
set listchars=tab:\⋮\ ,extends:⟫,precedes:⟪,nbsp:.,trail:·

" }}}
" VimFiler icons {{{
if neobundle#tap('vimfiler.vim')
	" Icons: │ ┃ ┆ ┇ ┊ ┋ ╎ ╏
	let g:vimfiler_tree_indentation = 1
	let g:vimfiler_tree_leaf_icon = '┆'
	let g:vimfiler_tree_opened_icon = '▼'
	let g:vimfiler_tree_closed_icon = '▷'
	let g:vimfiler_file_icon = ' '
	let g:vimfiler_readonly_file_icon = '⭤'
	let g:vimfiler_marked_file_icon = '✓'
	call neobundle#untap()
endif

"}}}
" GitGutter icons {{{
if neobundle#tap('vim-gitgutter')
	let g:gitgutter_sign_added = '▎'
	let g:gitgutter_sign_modified = '▎'
	let g:gitgutter_sign_removed = '▏'
	let g:gitgutter_sign_removed_first_line = '▔'
	let g:gitgutter_sign_modified_removed = '▋'
	call neobundle#untap()
endif

"}}}
" Indent-Guides icons {{{
if neobundle#tap('vim-indent-guides')
	let g:indent_guides_guide_size = 1
	let g:indent_guides_start_level = 1
	let g:indent_guides_auto_colors = 0
	call neobundle#untap()
endif
"}}}


" vim: set ts=2 sw=2 tw=80 noet :
