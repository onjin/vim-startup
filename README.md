# vim-startup

![vim startup script](http://dl.dropbox.com/u/185133/vim-startup/screenshot.jpg)

## What is this?

VIM distribution bundled with plugins managed by *neobundle* for programming in:

 * python
 * php

also with:
 * useful dashboard / start screen with sessions handling
 * presentation mode in vim
 * notes handling


To fully work you need to install:

 * vim or vim-gtk
 * exuberant-ctags - for code navigation

To work with python:
 * pip install flake8 pep8 pylint pyflakes jedi  # for static code checking

To work with php:
 * php code sniffer  # for static code checking


## Install
1. Clone `git clone git://github.com/onjin/vim-startup.git ~/.vim`
2. Enter directory `cd ~/.vim`
3. Run `make test` to make sure you have vim compiled with python and lua.
4. Run `make install`
5. Start `vim` or `gvim`, or `nvim`


## Upgrade

Run `make update`

## Configuration
 * ~/.vimrc.bundles.local - to put your additional plugins
 * ~/.vimrc.local - loaded after all plugins; used to configure / reconfigure plugins and local settings


## Plugins (bundles) included

If you want to install additional plugins, add them to **~/.vimrc.bundles.local** file.

- 'airblade/vim-gitgutter'
- 'beloglazov/vim-online-thesaurus'
- 'benekastah/neomake'
- 'bogado/file-line'
- 'cespare/vim-toml'
- 'chase/vim-ansible-yaml'
- 'chrisbra/csv.vim'
- 'chriskempson/base16-shell'
- 'christoomey/vim-tmux-navigator'
- 'davidhalter/jedi-vim'
- 'ekalinin/Dockerfile.vim'
- 'elzr/vim-json'
- 'fatih/vim-go'
- 'groenewege/vim-less'
- 'guns/xterm-color-table.vim'
- 'hail2u/vim-css3-syntax'
- 'haya14busa/incsearch.vim'
- 'haya14busa/vim-asterisk'
- 'hynek/vim-python-pep8-indent'
- 'itchyny/dictionary.vim'
- 'itchyny/vim-cursorword'
- 'itchyny/vim-gitbranch'
- 'jelera/vim-javascript-syntax'
- 'jiangmiao/simple-javascript-indenter'
- 'joker1007/unite-pull-request'
- 'junegunn/goyo.vim'
- 'kana/vim-niceblock'
- 'Konfekt/FastFold'
- 'kshenoy/vim-signature'
- 'lambdalisue/vim-findent'
- 'lambdalisue/vim-gista'
- 'lambdalisue/vim-gita'
- 'matchit.zip'
- 'mbbill/undotree'
- 'mitsuhiko/vim-jinja'
- 'mustache/vim-mustache-handlebars'
- 'nathanaelkane/vim-indent-guides'
- 'osyo-manga/unite-filetype'
- 'osyo-manga/unite-quickfix'
- 'othree/html5.vim'
- 'rafi/awesome-vim-colorschemes'
- 'rafi/vim-phpspec'
- 'rafi/vim-tagabana'
- 'rafi/vim-tinycomment'
- 'rafi/vim-tinyline'
- 'rafi/vim-unite-issue'
- 'Raimondi/delimitMate'
- 'rayburgemeestre/phpfolding.vim'
- 'rcmdnk/vim-markdown'
- 'rhysd/accelerated-jk'
- 'rhysd/clever-f.vim'
- 'scrooloose/nerdtree'
- 'shawncplus/phpcomplete.vim'
- 'Shougo/deoplete.nvim'
- 'Shougo/echodoc.vim'
- 'Shougo/junkfile.vim'
- 'Shougo/neco-syntax'
- 'Shougo/neco-vim'
- 'Shougo/neocomplete'
- 'Shougo/neoinclude.vim'
- 'Shougo/neomru.vim'
- 'Shougo/neopairs.vim'
- 'Shougo/neosnippet.vim'
- 'Shougo/neossh.vim'
- 'Shougo/unite-build'
- 'Shougo/unite-outline'
- 'Shougo/unite.vim'
- 'Shougo/vimfiler.vim'
- 'Shougo/vimproc.vim'
- 'Shougo/vinarise.vim'
- 'sotte/presenting.vim'
- 'StanAngeloff/php.vim'
- 't9md/vim-choosewin'
- 'tacroe/unite-mark'
- 'Tagbar'
- 'ternjs/tern_for_vim'
- 'terryma/vim-expand-region'
- 'thinca/vim-guicolorscheme'
- 'thinca/vim-localrc'
- 'thinca/vim-prettyprint'
- 'thinca/vim-quickrun'
- 'thinca/vim-unite-history'
- 'tsukkee/unite-tag'
- 'tyru/caw.vim'
- 'ujihisa/unite-colorscheme'
- 'vim-ruby/vim-ruby'
- 'vimwiki/vimwiki'
- 'xolox/vim-misc'
- 'xolox/vim-notes'
