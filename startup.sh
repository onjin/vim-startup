#!/usr/bin/env bash

set -eu

# settings {{{
VIM_STARTUP_HOME="${HOME}/.vim-startup"
VIM_STARTUP_REPO='https://github.com/onjin/vim-startup.git'

INFO='\033[01;33m'
ERROR='\033[01;31m'
RESET='\033[00;00m'
RESET='\033[00;00m'
# settings }}}

# functions {{{
info() {
    echo -e ${1}
}
error() {
    echo -e ${ERROR}${1}${RESET}
}

isinstalled() {
    if ! hash "${1}" 2>/dev/null; then
        error "You have to install '${1}' program first"
    fi
}

upgrade_repo() {
    if [ -e ${VIM_STARTUP_HOME} ]; then
        info " - upgrading ${VIM_STARTUP_HOME}"
        cd ${VIM_STARTUP_HOME} && git pull origin master
    fi
}

init_repo() {
    if [ !  -e ${VIM_STARTUP_HOME} ]; then
        info " - init ${VIM_STARTUP_HOME}"
        git clone --recursive ${VIM_STARTUP_REPO} ${VIM_STARTUP_HOME}
    fi
}

lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
}
cpif() {
    if [ ! -f "$2" ]; then
        cp "$1" "$2"
    fi
}

backup_vim_config() {
    for path in ".vim" ".vimrc" ".gvimrc"; do
    if [ -e ${HOME}/${path} ]; then
        mv -v ${HOME}/${path} ${HOME}/${path}.vim-startup.backup
    fi
    done
}

init_neobundle() {
    info " - installing neobundle"
    curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
    ret=$?
}

create_symlinks() {
    info " - creating symlinks"

    lnif ${VIM_STARTUP_HOME}/.vimrc ${HOME}/.vimrc
    lnif ${VIM_STARTUP_HOME}/.vimrc.bundles ${HOME}/.vimrc.bundles
    lnif ${VIM_STARTUP_HOME}/.vim ${HOME}/.vim
}

install_fonts() {
    info " - installing custom fonts"

    mkdir -p ~/.fonts
    SAVEIFS=${IFS}
    IFS=$(echo -en "\n\b")

    for font in `ls ${VIM_STARTUP_HOME}/fonts`; do
        cpif "${VIM_STARTUP_HOME}/fonts/${font}" ~/.fonts/
    done

    IFS=${SAVEIFS}
}

init_backup() {
    mkdir -p ~/.vim/backup
}

install() {
    if [ -e ${VIM_STARTUP_HOME} ]; then
        info "vim-startup already installed; run '$0 upgrade' to upgrade"
        exit 0
    fi

    init_repo

    backup_vim_config

    install_fonts
    create_symlinks
    init_backup

    touch ${HOME}/.vimrc.local

    init_neobundle

    info "vim-startup installed - run vim/gvim in order to install plugins"
}
upgrade() {
    upgrade_repo
    info "vim-startup upgraded - run vim/gvim in order to install plugins"
}
# functions }}}

# main {{{

info "vim-startup installer"
info "---------------------"
info ""

isinstalled "vim"
isinstalled "git"

ACTION=${1-install}
case ${ACTION} in
    install)
        install
        ;;
    upgrade)
        upgrade
        ;;
    install_fonts)
        install_fonts
        ;;
    help)
        echo "Usage: $0 <cmd>"
        echo "available commands: install, upgrade, install_fonts"
        ;;
    *)
        install
esac

info ""
info "--"
info "read more at ${VIM_STARTUP_REPO}"

# main }}}

# vim:foldmethod=marker
