#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias err='echo "$?"'
alias cwd='~/afs/scripts/cwd.sh'
alias i3lock='i3lock -i ~/afs/win.png -p win'
alias nbcommit='git rev-list --all --count'
#alias exe='chmod 744'
PS1='[\u@\h \W]\$ '
export LANG=en_US.utf8
export EDITOR=vim
NNTPSERVER='news.epita.fr' && export NNTPSERVER
