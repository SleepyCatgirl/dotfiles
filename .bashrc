#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '
export PATH="${PATH}:${HOME}/.local/bin"
export ALTERNATE_EDITOR=""
export EDITOR="emacsclient -t"                  # $EDITOR opens in terminal
export VISUAL="emacsclient -c -a emacs"         # $VISUAL opens in GUI mode
alias ec="emacsclient --create-frame --alternate-editor="""
export PS1=" \[\e[00;34m\][λ \W \[\e[0m\]] "
