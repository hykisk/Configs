# My-Linux-Config-Set
- - -

## history.sh

```
cat << "_EOF_" > /etc/profile.d/history.sh
# history initialization

HISTTIMEFORMAT='%F %T '                        # Format date of execution
HISTSIZE=100000                                # Maximum command recorded
HISTFILESIZE=100000                            # Maximum command recorded
HISTIGNORE='history:pwd'                       # Commands not to be saved
PROMPT_COMMAND='history -a; history -r'        # Real time of history
_EOF_
```

## zip, unzip

```
$ sudo apt install zip
$ sudo apt install unzip
```
