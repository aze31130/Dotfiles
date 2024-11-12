#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Loading aliases
source ~/.bash_aliases
source ~/.bash_functions

# Env variables
export LANG=fr_FR.UTF-8
export TERMINAL=alacritty
export TERM=xterm-256color
export EDITOR=nano
export PAGER=most
export HISTSIZE=100000000
export SAVEHIST=100000000

RED="\[\e[32;31m\]"
GREEN="\[\e[32;29m\]"
RESET="\[\e[0m\]"
CYAN="\[\e[1;36m\]"

source /usr/share/nnn/quitcd/quitcd.bash_sh_zsh

PS1="[$GREEN\t$RESET] <\u@$RED\h$RESET> ($CYAN\W$RESET) ► "
