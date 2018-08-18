# .bash_profile

#export PATH

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs
export PATH=$PATH:$HOME/bin
export POSTGRES_HOME=/var/lib/pgsql/9.X/
export PGDATA=$POSTGRES_HOME/data
export LD_LIBRARY_PATH=$POSTGRES_HOME/lib:$LD_LIBRARY_PATH
export PGLIB=$POSTGRES_HOME/lib
export PATH=$POSTGRES_HOME/bin:$PATH
export PGPORT=5432

# ls Colors
LS_COLORS='no=00;38;5;244:rs=0:di=00;38;5;33:ln=00;38;5;37:mh=00:pi=48;5;230;38;5;136;01:so=48;5;230;38;5;136;01:do=48;5;230;38;5;136;01:bd=48;5;230;38;5;244;01:cd=48;5;230;38;5;244;01:or=48;5;235;38;5;160:su=48;5;160;38;5;230:sg=48;5;136;38;5;230:ca=30;41:tw=48;5;64;38;5;230:ow=48;5;235;38;5;33:st=48;5;33;38;5;230:ex=00;38;5;64:_.tar=00;38;5;61:_.tgz=00;38;5;61:_.arj=00;38;5;61:_.taz=00;38;5;61:_.lzh=00;38;5;61:_.lzma=00;38;5;61:_.tlz=00;38;5;61:_.txz=00;38;5;61:_.zip=00;38;5;61:_.z=00;38;5;61:_.Z=00;38;5;61:_.dz=00;38;5;61:_.gz=00;38;5;61:_.lz=00;38;5;61:_.xz=00;38;5;61:_.bz2=00;38;5;61:_.bz=00;38;5;61:_.tbz=00;38;5;61:_.tbz2=00;38;5;61:_.tz=00;38;5;61:_.deb=00;38;5;61:_.rpm=00;38;5;61:_.jar=00;38;5;61:_.rar=00;38;5;61:_.ace=00;38;5;61:_.zoo=00;38;5;61:_.cpio=00;38;5;61:_.7z=00;38;5;61:_.rz=00;38;5;61:_.apk=00;38;5;61:_.gem=00;38;5;61:_.jpg=00;38;5;136:_.JPG=00;38;5;136:_.jpeg=00;38;5;136:_.gif=00;38;5;136:_.bmp=00;38;5;136:_.pbm=00;38;5;136:_.pgm=00;38;5;136:_.ppm=00;38;5;136:_.tga=00;38;5;136:_.xbm=00;38;5;136:_.xpm=00;38;5;136:_.tif=00;38;5;136:_.tiff=00;38;5;136:_.png=00;38;5;136:_.svg=00;38;5;136:_.svgz=00;38;5;136:_.mng=00;38;5;136:_.pcx=00;38;5;136:_.dl=00;38;5;136:_.xcf=00;38;5;136:_.xwd=00;38;5;136:_.yuv=00;38;5;136:_.cgm=00;38;5;136:_.emf=00;38;5;136:_.eps=00;38;5;136:_.CR2=00;38;5;136:_.ico=00;38;5;136:_.tex=00;38;5;245:_.rdf=00;38;5;245:_.owl=00;38;5;245:_.n3=00;38;5;245:_.ttl=00;38;5;245:_.nt=00;38;5;245:_.torrent=00;38;5;245:_.xml=00;38;5;245:_Makefile=00;38;5;245:_Rakefile=00;38;5;245:_build.xml=00;38;5;245:_rc=00;38;5;245:_1=00;38;5;245:_.nfo=00;38;5;245:_README=00;38;5;245:_README.txt=00;38;5;245:_readme.txt=00;38;5;245:_.md=00;38;5;245:_README.markdown=00;38;5;245:_.ini=00;38;5;245:_.yml=00;38;5;245:_.cfg=00;38;5;245:_.conf=00;38;5;245:_.c=00;38;5;245:_.cpp=00;38;5;245:_.cc=00;38;5;245:_.log=00;38;5;240:_.bak=00;38;5;240:_.aux=00;38;5;240:_.lof=00;38;5;240:_.lol=00;38;5;240:_.lot=00;38;5;240:_.out=00;38;5;240:_.toc=00;38;5;240:_.bbl=00;38;5;240:_.blg=00;38;5;240:_~=00;38;5;240:_#=00;38;5;240:_.part=00;38;5;240:_.incomplete=00;38;5;240:_.swp=00;38;5;240:_.tmp=00;38;5;240:_.temp=00;38;5;240:_.o=00;38;5;240:_.pyc=00;38;5;240:_.class=00;38;5;240:_.cache=00;38;5;240:_.aac=00;38;5;166:_.au=00;38;5;166:_.flac=00;38;5;166:_.mid=00;38;5;166:_.midi=00;38;5;166:_.mka=00;38;5;166:_.mp3=00;38;5;166:_.mpc=00;38;5;166:_.ogg=00;38;5;166:_.ra=00;38;5;166:_.wav=00;38;5;166:_.m4a=00;38;5;166:_.axa=00;38;5;166:_.oga=00;38;5;166:_.spx=00;38;5;166:_.xspf=00;38;5;166:_.mov=00;38;5;166:_.mpg=00;38;5;166:_.mpeg=00;38;5;166:_.m2v=00;38;5;166:_.mkv=00;38;5;166:_.ogm=00;38;5;166:_.mp4=00;38;5;166:_.m4v=00;38;5;166:_.mp4v=00;38;5;166:_.vob=00;38;5;166:_.qt=00;38;5;166:_.nuv=00;38;5;166:_.wmv=00;38;5;166:_.asf=00;38;5;166:_.rm=00;38;5;166:_.rmvb=00;38;5;166:_.flc=00;38;5;166:_.avi=00;38;5;166:_.fli=00;38;5;166:_.flv=00;38;5;166:_.gl=00;38;5;166:_.m2ts=00;38;5;166:_.divx=00;38;5;166:_.webm=00;38;5;166:_.axv=00;38;5;166:_.anx=00;38;5;166:_.ogv=00;38;5;166:*.ogx=00;38;5;166:'

if [ -f ~/.dircolors-solarized/dircolors.ansi-dark ]; then
    export LS_COLORS
    eval `dircolors ~/.dircolors-solarized/dircolors.ansi-dark`
el
    echo "not found file. ~/.dircolors-solarized/dircolors.ansi-dark"
fi

# alias
alias rm='rm -i'
alias ls='ls --color=auto --show-control-chars'
alias grep='grep --color=always'
alias vi='vim'

# ctrl-s, ctrl-i search
stty stop undef
stty start undef

# find command. Exclude target directory.
function find { $( which find ) "$@"  -not -iwholename '*/.git/*'  ; }

#. /usr/share/git-core/contrib/completion/git-prompt.sh
#export PS1='\u@\h [\W $(__git_ps1)] \$ '

# Share history for tmux
function share_history {
    history -a
    history -c
    history -r
}
PROMPT_COMMAND='share_history'
shopt -u histappend

