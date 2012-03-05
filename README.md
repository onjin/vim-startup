vim-startup
===========

If you:
 * want to start with vim
 * have no time to learn how to configure for you
 * have no time to find plugins for you

This is example startup vim configuration using vundle plugin manager.


What is inside
--------------

Plugins:

 * gmarik/vundle - plugin manager
 * Lokaltog/vim-powerline - usefull statusline
 * scrooloose/syntastic - syntax checking
 * scrooloose/nerdtree - files manager
 * Shougo/neocomplcache - code snippets
 * vcscommand.vim - file version systems integration (git, svn, csv)
 * Shougo/neocomplcache-snippets-complete
 * Tagbar - current opened code tags (using ctags)
 * altercation/vim-colors-solarized - cool color scheme
 * ervandew/supertab - better <tab> support
 * michaeljsmith/vim-indent-object


Installation
------------
To full work you need installed:

 * vim or vim-gtk
 * exuberant-ctags
 * for good python syntax checking install 'sudo easy_install flake8'

Then you can do:
 * wget https://github.com/onjin/vim-startup/raw/master/vim-startup.sh
 * chmod +x ./vim-startup.sh && ./vim-startup.sh


Default mappings
----------------
 * F4 - tags list
 * F12 - file syntax errors
 * ctrl+p - nerd tree - file manager
 * :sit - NERDTreeFind - find current opened file in nerdtree
 * ctrl+k - expand snipped (f.e. type 'class<ctrl+k>...')

 * ,re - edit ~/.vimrc
 * ,rt - edit ~/.vimrc in new tab
 * ,rc - reread ~/.vimrc

 * ,bi - install vim plugins
 * ,bu - install && update vim plugins
 * ,bs - search new vim plugins
 * ,bc - clean removed vim plugins

 * Moving between windows: <ctrl> + jkhl
