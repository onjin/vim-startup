vim-startup
===========

If you:
 * want to start with vim
 * have no time to learn how to configure for you
 * have no time to find plugins for you

This is example startup vim configuration using vundle plugin manager.


What is inside
--------------

Plugins
 * 'gmarik/vundle' - plugin manager
 * 'Lokaltog/vim-powerline' - usefull statusline
 * 'scrooloose/syntastic' - syntax checking
 * 'scrooloose/nerdtree' - files manager
 * 'Shougo/neocomplcache' - code snippets
 * 'vcscommand.vim' - file version systems integration (git, svn, csv)
 * 'Shougo/neocomplcache-snippets-complete'
 * 'Tagbar' - current opened code tags (using ctags)
 * 'altercation/vim-colors-solarized' - cool color scheme
 * 'ervandew/supertab' - better <tab> support
 * 'michaeljsmith/vim-indent-object'


Installation
------------
To full work you need installed:
 * `vim` or `vim-gtk`
 * exuberant-ctags
 * for good python syntax checking install 'sudo easy_install flake8'

Then you can do:
 * wget https://github.com/onjin/vim-startup/vim-startup.sh
 * chmod +x ./vim-startup.sh && ./vim-startup.sh
