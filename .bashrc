#
# ~/.bashrc
#
# If not running interactively, don't do anything

# Loading aliases
source ~/.bash_aliases
source ~/.bash_functions

export EDITOR=nano
export HISTSIZE=1000000

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
RED="\[\e[32;31m\]"
GREEN="\[\e[32;29m\]"
RESET="\[\e[0m\]"
CYAN="\[\e[1;36m\]"

source /usr/share/nnn/quitcd/quitcd.bash_sh_zsh

PS1="[$GREEN\t$RESET] <\u@$RED\h$RESET> ($CYAN\W$RESET) ► "
