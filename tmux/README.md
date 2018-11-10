# Installation

## CentOS
- - -
```
# When installing with `yum install`, the version is old.

$ curl -kLO https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz
$ sudo yum -y install gcc libevent-devel ncurses-devel
$ tar -zxvf tmux-2.6.tar.gz
$ cd tmux-2.6
$ ./configure
$ make
$ sudo make install
$ tmux -V
```

## Ubuntu
- - -
```
$ dpkg -l | grep tmux
# version x.x-xbuild1
# When installing with `apt-get`, the version is old.

$ sudo apt update
$ sudo apt-get -y install pkg-config libtool
$ sudo apt install -y automake libevent-dev ncurses-dev
$ cd /usr/local/src
$ git clone git@github.com:tmux/tmux.git
$ cd /usr/local/src/tmux
$ sh autogen.sh
$ ./configure
$ make
$ cp -p /usr/local/src/tmux/tmux /usr/bin/
$ rm -rf /usr/local/src/tmux
$ rm -rf /usr/local/bin/tmux
```
