vim-startup
===========

![vim startup script](http://dl.dropbox.com/u/185133/vim-startup/screenshot.jpg)

If you:

 * want to start with vim
 * have no time to learn how to configure it for you
 * have no time to find plugins for you


**vim-startup** installs at ~/.vim-startup and you can extend it without modification using **~/.vimrc.before**,
**~/vimrc.bundles.local** and **~/.vimrc.local** files.


Installation
------------
To full work you need installed:

 * vim or vim-gtk
 * exuberant-ctags
 * for good python syntax checking install 'sudo easy_install flake8'

Installation script:

```bash

    curl https://raw.githubusercontent.com/onjin/vim-startup/master/startup.sh | bash

    # run vim or gvim
    vim

    # answer `y` to question for install plugins
```


Upgrade:

```bash
   cd ~/.vim-startup
   ./startup.sh upgrade
```

Configuration
-------------

To disable language plugins put in **~/.vimrc.before** proper settings:
```vim

    " to disable vim startify custom start screen
    let g:vimstartup_no_startify = 1

    " to disable python bundles and enhanced python syntax colorscheme
    let g:vimstartup_no_python_bundles = 1

    " to disable VimClojure
    let g:vimstartup_no_clojure_bundles = 1

    " to disable go-vim
    let g:vimstartup_no_go_bundles = 1

    " to disalbe vim-coffee-script
    let g:vimstartup_no_coffeescript_bundles = 1

    " to disable phpqa && phpdocumentor
    let g:vimstartup_no_php_bundles = 1
```



Help
----

 * F3        - strip trailing white spaces
 * F4        - tagbar toggle
 * Shift+F4  - unite outline
 * F5        - paste mode toggle
 * F6        - check complexity
 * F12       - check errors using syntastic plugin

gui:

 * Shift+F6  - guifonts Anonymous Pro 12
 * Shift+F7  - guifonts Inconsolata 12
 * Shift+F8  - guifonts monospace 12

shell:

 * ctrl+s    - run vim shell as pop

unite:

 * ctrl+p    - search files
 * <space>p  - search files - nosplit
 * <space>/  - search in files
 * <space>s  - switch buffer
 * <space>y  - yank history
 * <space>l  - last edited files

git (fugitive):

 * ,gs       - git status
 * ,gc       - git commit
 * ,gd       - git diff
 * ,gb       - git blame

windows:

 * <ctr>+J   - switch && maximize window
 * <ctr>+K   - switch && maximize window

 * <ctr>+n   - hlsearch toggle
 * ,l        - set list toggle

vimrc:

 * ,re       - edit ~/.vimrc
 * ,rt       - open ~/.vimrc in tab
 * ,rc       - reload ~/.vimrc
 * ,rh       - edit ~/.vimrc at mapping help

buffers:

 * ,c        - close current buffer
 * ,wc       - write & close current buffer
 * ,d        - go previous buffer && close current
 * ,D        - close all buffers
 * ,,        - switch between last two buffers


Plugins (bundles) included
--------------------------

Plugins are in **~/.vimrc.bundles** file. If you want to install additional plugins, add them to **~/.vimrc.bundles.local** file.

 * 'altercation/vim-colors-solarized'
 * 'bcnice20/go-vim'
 * 'beyondwords/vim-twig'
 * 'blackboard.vim'  # 1.17  Enhanced version of the python syntax highlighting script
 * 'bling/vim-airline'
 * 'Conque-Shell'
 * 'davidhalter/jedi-vim'
 * 'jmcantrell/vim-virtualenv'
 * 'derekwyatt/vim-scala'
 * 'ervandew/supertab'
 * 'garybernhardt/pycomplexity', {'rtp': 'pycomplexity.vim/'}
 * 'honza/vim-snippets.git '
 * 'joonty/vim-phpqa.git'
 * 'jpalardy/vim-slime'
 * 'junegunn/goyo.vim'
 * 'kchmck/vim-coffee-script'
 * 'kien/rainbow_parentheses.vim'
 * 'mhinz/vim-startify'
 * 'michaeljsmith/vim-indent-object'
 * 'nathanaelkane/vim-indent-guides'
 * 'plasticboy/vim-markdown'  # Markdown Vim Mode
 * 'python.vim--Vasiliev'  # 1.17  Enhanced version of the python syntax highlighting script
 * 'scrooloose/nerdtree'
 * 'scrooloose/syntastic'
 * 'Shougo/unite-outline'
 * 'Shougo/unite.vim'
 * 'Shougo/vimproc'
 * 'Shougo/vimshell'
 * 'sjl/gundo.vim'
 * 'sotte/presenting.vim'  # A simple tool for presenting slides in vim based on text files.
 * 'Tagbar'
 * 'tpope/vim-fugitive'
 * 'tpope/vim-surround'
 * 'UltiSnips'
 * 'vcscommand.vim'
 * 'VimClojure'
 * 'vim-scripts/PDV--phpDocumentor-for-Vim'
 * 'xolox/vim-misc'
 * 'xolox/vim-notes'
