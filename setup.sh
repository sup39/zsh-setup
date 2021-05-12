#!/bin/sh
# .zshrc
[ -f $HOME/.zshrc ] || curl https://raw.githubusercontent.com/sup39/zsh-setup/master/zshrc -o $HOME/.zshrc
# .zshenv
[ -f $HOME/.zshenv ] || curl https://raw.githubusercontent.com/sup39/zsh-setup/master/zshenv -o $HOME/.zshenv
