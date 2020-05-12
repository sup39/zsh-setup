#!/bin/sh
# .zshrc
curl https://raw.githubusercontent.com/sup39/zsh-setup/master/zshrc -o $HOME/.zshrc
[ $SHELL = "/bin/zsh" ] && . $HOME/.zshrc # auto source zshrc
# .vim/sup39
[ -d $HOME/.vim/sup39 ] || git clone https://github.com/sup39/vimrc $HOME/.vim/sup39
# .vimrc
[ -f $HOME/.vimrc ] || cat >$HOME/.vimrc <<EOF
source $HOME/.vim/sup39/plug.vim
source $HOME/.vim/sup39/vimrc
EOF
