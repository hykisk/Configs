# .bash_profile


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

# Share clipboard
export PATH=$PATH:/mnt/c/tools/win32yank-x64
