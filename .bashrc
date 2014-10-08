#
# ~/.bashrc
#

# 104.160.32.24
# If not running interactively, don't do anything
# export LANG=zh_CN.UTF-8
# export LANGUAGE=zh_CN:en_US
# export LC_CTYPE=en_US.UTF-8

[[ $- != *i* ]] && return

alias grep='grep --color=auto'
alias ls='ls --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='\[\e[0;31m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[0;31m\]\$ \[\e[m\]\[\e[0;32m\] '
export  WINEARCH=win32
export WINEPREFIX=~/win32
