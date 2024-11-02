#
# Bash Aliases file
#

alias ll="ls -lisa"
alias gh="history|grep"
alias reload="source ~/.bashrc;reset"

# Git
alias gs="git status"
alias ga="git add -A"
alias gp="git push"
alias autocommit="git add -A;git commit -m 'Auto commit';git push"

# Pacman shortcuts
alias search="pacman -Ss "
alias remove="sudo pacman -Runs "
alias purge="sudo pacman -Rcns "
alias orphan="sudo pacman -Qtdq | sudo pacman -Rns -"
alias unneeded="pacman -Qqd | pacman -Rsu --print -"
