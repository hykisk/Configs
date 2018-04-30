# .bashrc

# User specific aliases and functions

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

. /usr/share/git-core/contrib/completion/git-prompt.sh
export PS1='\u@\h [\W $(__git_ps1)] \$ '
