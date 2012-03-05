#!/bin/bash

echo "VIM QuickStart started"
echo ""
echo "======================"
echo "required packages:"
echo " - vim (|| vim-gtk)"
echo " - exuberant-ctags"
echo " - flake8 for python"
echo "======================"
echo ""
echo -n "press <enter> to continue"
read continue

cd ~

# backup .vim & .vimrc if exists
if [ -d .vim ]; then
    echo " - backup .vim"
    mv -f .vim .vim.start-backup
fi
if [ -f .vimrc ]; then
    echo " - backup .vimrc"
    mv .vimrc .vimrc.start-backup
fi

# create initial .vim layout
echo " - create dir layout"
mkdir -p .vim/bundle
mkdir -p .vim/backup

# install vundle plugin and initial .vimrc file
echo " - installing vundle"
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
echo " - installing initial .vimrc"
wget http://dl.dropbox.com/u/185133/tmp/.vimrc

# install plugins using vundle plugin manager
echo " - installing plugins (ignore warnings this time, just press <enter> 1-2 times"
vim +BundleInstall +qall

# install patched fonts for powerline
mkdir -p ~/.fonts
cd .fonts
git clone https://github.com/scotu/ubuntu-mono-powerline.git
cd

echo "startup done"
echo ""

echo "now you can run your 'vim'"

echo ""
echo "ctrl+p - run nerd tree"
echo "F4     - code tags"
echo "F12    - code errors"
echo "ctrl+k - run code snippets"
echo "         f.e. type 'class<ctrl+k>some_name<ctrl+k> ect"

