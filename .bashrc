# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
elif [ -f /etc/bash.bashrc ]; then
    . /etc/bash.bashrc
fi

# User specific aliases and functions
alias vi='vim'
alias grephistory='history | grep'

shopt -s histappend histreedit histverify

if [ -n "$GITAWAREPROMPT" ]; then
    . "${GITAWAREPROMPT}/main.sh"
    export PS1="[\u@\h \W \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]]\$ "
fi

if [ -f ~/.bashrc.local ]; then
    . ~/.bashrc.local
fi
