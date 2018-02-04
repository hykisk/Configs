# .bashrc

# ls Colors
if [ -f ~/.dircolors ]; then
    if type dircolors > /dev/null 2>&1; then
        eval $(dircolors ~/.dircolors)
    elif type gdircolors > /dev/null 2>&1; then
        eval $(gdircolors ~/.dircolors)
    fi
fi

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

. /usr/share/git-core/contrib/completion/git-prompt.sh
export PS1='\u@\h [\W $(__git_ps1)] \$ '
