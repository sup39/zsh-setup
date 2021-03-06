## Basic
# enable comments in interactive-shell
setopt interactivecomments
# disable ^S ^Q
stty stop undef start undef
# history
HISTFILE=~/.zsh_history
HISTSIZE=1000 # memory
SAVEHIST=1000 # file
setopt appendhistory

## Input
# use vim mode
bindkey -v
# imap jk to <ESC>
bindkey -Mviins -s jk '\e'

## Edit
# edit zshrc
vizr() {vi $HOME/.zshrc && source $HOME/.zshrc}
# edit zshenv
vize() {vi $HOME/.zshenv && . $HOME/.zshenv}
# edit zprofile
vizp() {vi $HOME/.zprofile && . $HOME/.zprofile}
# edit vimrc
viv() {vi $HOME/.vim/sup39/vimrc}
viV() {vi $HOME/.vimrc}

## Completion
# setup
autoload -U compinit; compinit -u
ZSHC_ROOT=$HOME/.zsh_complete
# edit
vizc() { [ -z $1 ] && local fn=$ZSHC_ROOT/$1 && vi $fn && [ -f $fn ] && . $fn }
compdef "_files -W $ZSHC_ROOT" vizc # completion for vizc
# source
sczc() {source <(find "$ZSHC_ROOT" -name "*.zsh" -exec cat {} \;)}
[ -d "$ZSHC_ROOT" ] && sczc # auto source once

## PS1
function zle-line-init zle-keymap-select {
  local host='%m'
  case $KEYMAP in
    vicmd) # normal mode
      PS1="%F{200}%n@$host%f:%1~%# ";;
    main) # insert mode
      PS1="%F{49}%n@$host%f:%1~%# ";;
  esac
  zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

## Alias
alias vi='vim'
alias ls='ls --color=auto'
