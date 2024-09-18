#!/usr/local/bin/bash

[[ $PS1 && -f /usr/local/share/bash-completion/bash_completion.sh ]] && \
        source /usr/local/share/bash-completion/bash_completion.sh

# Case insensitive completion
bind 'set completion-ignore-case on'

export HISTFILESIZE=50000
export HISTSIZE=10000

HISTTIMEFORMAT='%F %T '

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# ls and ll
alias ls='ls -FG --color'
alias ll='ls -laFGh'
alias la='ls -aFGh'
#alias ls='ls -FG'
#alias ll='ls -alFG'

alias cp='cp -i'
alias mv='mv -iv'
alias rm='rm -iv'

alias mkdir='mkdir -p'
alias ps='ps auxwf'

alias python3='python3.11'

# Output user
NAME="\[\e[1;37;42m\]"
HOST="\[\e[1;40m\]"
DIR="\[\e[0;30;47m\]"
END="\[\e[m\]"
TIME="\[\e[1;90;107m\]"

#export PS1="${NAME} \u ${HOST} @\h ${DIR} \W ${TIME} \t ${END} \$\n"
export PS1='\[\033[01;97m\]\u@\h\[\033[00m\]'`echo -e '\U1F3EB'`:'\[\033[01;33m\]\w\[\033[0;31m\]\[\033[00m\]\n\$ '

# Color ls
LS_COLORS='no=0:ow=41:di=7:fi=0:ln=105:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=01;31:*.md=96'
export LS_COLORS

# Break after output
function add_line {
    if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
        PS1_NEWLINE_LOGIN=true
    else
    printf '\n'
    fi
}
PROMPT_COMMAND='add_line'

export XKB_DEFAULT_LAYOUT="jp"

