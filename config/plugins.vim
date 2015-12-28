
" Plugin Settings
"---------------------------------------------------------

if neobundle#tap('unite.vim') "{{{
	let g:unite_data_directory = $VARPATH.'/unite'
	let g:unite_source_history_yank_enable = 1
	nnoremap <silent> <S-F4> :Unite outline<CR>
	nnoremap <silent> <F8> :Unite neobundle/update -log -wrap -auto-quit<CR>
	nnoremap <C-p> :<C-u>Unite -buffer-name=files -start-insert file_rec/async<cr>
	nnoremap ,p :<C-u>Unite -no-split -buffer-name=files -start-insert file_rec/async<cr>
	nnoremap ,l :<C-u>Unite -buffer-name=files -start-insert file_mru<cr>
	nnoremap ,/ :Unite grep:.<cr>
	nnoremap ,h :Unite history/yank<cr>
	nnoremap ,s :Unite -quick-match buffer<cr>

	call neobundle#untap()
endif " }}}


if neobundle#tap('vim-markdown') "{{{
	let g:vim_markdown_initial_foldlevel = 5
	let g:vim_markdown_frontmatter = 1
	call neobundle#untap()
endif "}}}

if neobundle#tap('vim-notes') "{{{
	let g:notes_directories = ['~/Dropbox/Notes', '~/Dropbox/Shared.Notes']
	call neobundle#untap()
endif "}}}


if neobundle#tap('jedi-vim') "{{{
	setlocal completeopt=menuone,longest
	let g:jedi#completions_enabled = 0
	let g:jedi#auto_vim_configuration = 0
	let g:jedi#smart_auto_mappings = 0
	let g:jedi#use_tag_stack = 0
	let g:jedi#popup_select_first = 0
	let g:jedi#use_splits_not_buffers = 'right'
	let g:jedi#completions_command = ''
	let g:jedi#goto_command = '<leader>d'
	let g:jedi#goto_assignments_command = '<leader>a'
	let g:jedi#documentation_command = 'K'
	let g:jedi#rename_command = '<leader>r'
	let g:jedi#usages_command = '<leader>n'
	let g:jedi#popup_on_dot = 0
	let g:jedi#max_doc_height = 40
	let g:jedi#show_call_signatures = 0
	let g:jedi#show_call_signatures_delay = 1000
	call neobundle#untap()
endif

"}}}
"
if neobundle#tap('vim-niceblock') "{{{
	xmap I  <Plug>(niceblock-I)
	xmap A  <Plug>(niceblock-A)

	call neobundle#untap()
endif

"}}}
"
if neobundle#tap('FastFold') "{{{
	" Vim script
	" augroup: a
	" function: f
	" lua: l
	" perl: p
	" ruby: r
	" python: P
	" tcl: t
	" mzscheme: m
	let g:vimsyn_folding = 'af'
	let g:tex_fold_enabled = 1
	let g:xml_syntax_folding = 1
	let g:php_folding = 2
	let g:php_phpdoc_folding = 1
	let g:perl_fold = 1
	call neobundle#untap()
endif

"}}}
if neobundle#tap('goyo.vim') "{{{
	nnoremap <Leader>G :Goyo<CR>

	let neobundle#hooks.on_source = $VIMPATH.'/config/plugins/goyo.vim'
	call neobundle#untap()
endif

"}}}
if neobundle#tap('vim-signature') "{{{
	let g:SignatureMarkTextHLDynamic = 1
	let g:SignatureMarkerTextHLDynamic = 1
	let g:SignaturePurgeConfirmation = 1
	let g:signature_set_location_list_convenience_maps = 0
	let g:SignatureMap = {
		\ 'ListLocalMarks':    'm/',
		\ 'ListLocalMarkers':  'm?',
		\ 'Leader':            'm',
		\ 'PlaceNextMark':     'm,',
		\ 'ToggleMarkAtLine':  'm.',
		\ 'PurgeMarksAtLine':  'm-',
		\ 'DeleteMark':        'dm',
		\ 'PurgeMarks':        'm<Space>',
		\ 'PurgeMarkers':      'm<BS>',
		\ 'GotoNextSpotAlpha': 'mj',
		\ 'GotoPrevSpotAlpha': 'mk',
		\ 'GotoNextMarkerAny': 'mJ',
		\ 'GotoPrevMarkerAny': 'mK',
		\ 'GotoNextMarker': '',
		\ 'GotoPrevMarker': '',
		\ 'GotoNextLineAlpha': '',
		\ 'GotoPrevLineAlpha': '',
		\ 'GotoNextSpotByPos': '',
		\ 'GotoPrevSpotByPos': '',
		\ 'GotoNextLineByPos': '',
		\ 'GotoPrevLineByPos': ''
		\ }

	call neobundle#untap()
endif

"}}}
if neobundle#tap('tern_for_vim') "{{{
	autocmd MyAutoCmd FileType javascript setlocal omnifunc=tern#Complete
	call neobundle#untap()
endif

"}}}
if neobundle#tap('phpcomplete.vim') "{{{
	augroup phpSyntaxOverride
		autocmd!
		autocmd FileType php hi! def link phpDocTags phpDefine
	augroup END
	call neobundle#untap()
endif

"}}}
if neobundle#tap('phpfolding.vim') "{{{
	let g:DisableAutoPHPFolding = 1
	call neobundle#untap()
endif

"}}}
if neobundle#tap('vim-jinja') "{{{
	let g:htmljinja_disable_detection = 0
	call neobundle#untap()
endif

"}}}
if neobundle#tap('vim-gita') "{{{
	nnoremap <silent> <leader>gs :<C-u>Gita status<CR>
	nnoremap <silent> <leader>gd :<C-u>Gita diff<CR>
	nnoremap <silent> <leader>gc :<C-u>Gita commit<CR>
	nnoremap <silent> <leader>gb :<C-u>Gita blame<CR>
	nnoremap <silent> <leader>gB :<C-u>Gita browse<CR>
	nnoremap <silent> <leader>gp :<C-u>Gita push<CR>
	call neobundle#untap()
endif

"}}}
if neobundle#tap('vim-gista') "{{{
	let g:gista#directory = $VARPATH.'/gista/'
	call neobundle#untap()
endif

"}}}
