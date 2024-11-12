#
# Bash Aliases file
#

alias ls='ls --color=auto'
alias ll="ls -lisa"
alias gh="history|grep"
alias reload="source ~/.bashrc;reset"

alias l=ls
alias c=cat
alias g=grep
alias e=echo
alias t=tree
alias f=find
alias h=head
alias s=sed
alias x=xargs
alias tl=tail
alias mk=make
alias untar="tar -xvf"
alias ports="ss -ptln"
alias tartiflette="tar -cvaf"
alias tartifliste="tar -tvf"
alias détartre="tar -xvf"
alias chmox="chmod a+x"

alias "..."="../.."
alias "...."="../../.."
alias "....."="../../../.."

[ -f /usr/bin/lsd ] && alias ls=lsd

# Shortcuts
if type bind > /dev/null; then
    bind '"\C-k": "ls\n"'
    bind '"\C-t": "kitty\n"'
fi

# Git
alias gs="git status"
alias ga="git add -A"
alias gp="git push"

# Pacman shortcuts
alias search="pacman -Ss "
alias remove="sudo pacman -R "
alias purge="sudo pacman -Rcns "
alias orphan="sudo pacman -Qtdq | sudo pacman -Rns -"
alias unneeded="pacman -Qqd | pacman -Rsu --print -"
