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

alias rm='rm -i'
alias ls='ls --color=auto --show-control-chars'
alias grep='grep --color=always'
alias vi='vim'

# ctrl-s, ctrl-i search
stty stop undef
stty start undef

# ls Colors
eval `dircolors ~/.dircolors/dircolors.ansi-light` # or dark

# find command. Exclude target directory.
function find { $( which find ) "$@"  -not -iwholename '*/.git/*'  ; }

. /usr/share/git-core/contrib/completion/git-prompt.sh
export PS1='\u@\h [\W $(__git_ps1)] \$ '
