# Do this first, required by .bashrc
if [ -d ~/opt/git-aware-prompt ]; then
    export GITAWAREPROMPT=~/opt/git-aware-prompt
fi

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

# User-specific environment and startup programs
if [ -d ~/sbin ]; then
    export PATH=$HOME/sbin:$PATH
fi
if [ -d ~/bin ]; then
    export PATH=$HOME/bin:$PATH
fi

export LANG="C.UTF-8"
export LC_ALL="C.UTF-8"
export NCURSES_NO_UTF8_ACS=1

export HISTCONTROL=erasedups:ignorespace
# Negative value only supported in bash 4.3 and later
export HISTSIZE=10000
export HISTFILESIZE=10000
export HISTTIMEFORMAT="(%F) "

EDITOR=$(alias vim 2> /dev/null | cut -d "'" -f 2)
if [ -z "$EDITOR" ]; then
    EDITOR=vim
fi
export EDITOR

if [[ -n "$SSH_CLIENT" ]]; then
    export DISPLAY=$(echo "$SSH_CLIENT" | cut -d " " -f 1):0
fi

if [ -f ~/.bash_profile.local ]; then
    . ~/.bash_profile.local
fi
