#!/bin/sh

cat << EOF >> ~/.zshrc
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -al | less'

PROMPT='%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%~%b%f %# '
RPROMPT='[%F{yellow}%?%f]'
EOF
