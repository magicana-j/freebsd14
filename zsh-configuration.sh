#!/bin/sh

cat << EOF >> ~/.zshrc
setopt print_eight_bit
setopt auto_cd
setopt auto_pushd

export HISTSIZE=1000
export SAVEHIST=1000
setopt share_history
setopt hist_reduce_blanks
setopt hist_ignore_all_dups

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -al | less'

PROMPT='%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%~%b%f %# '
RPROMPT='[%F{yellow}%?%f]'
EOF
