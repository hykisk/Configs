# Installation

- `yum install` は古いのソースからインストール
```
$ curl -kLO https://github.com/tmux/tmux/releases/download/2.6/tmux-2.6.tar.gz
$ sudo yum -y install gcc libevent-devel ncurses-devel
$ tar -zxvf tmux-2.6.tar.gz
$ cd tmux-2.6
$ ./configure
$ make
$ sudo make install
$ tmux -V
```

- `~/.tmux.conf` を配置
```
scp -P 122 /c/work/Configs/tmux/.tmux.conf root@192.168.100.101:~/.
```