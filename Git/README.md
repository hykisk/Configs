## Minimal

```
$ git config --global user.name "hisk"
$ git config --global user.email hisk@xxx.xxx
$ git config --global push.default current
```

```
$ git config --local user.name "hiroyuki-san"
$ git config --local user.email "hiroyuki-san@xxx.xxx"
$ git config --global push.default current
```

## Add SSH Key
```
$ vi ~/.ssh/known_hosts
#delete cache
$ ssh-keygen -t rsa -f ~/.ssh/id_rsa_github
$ eval "$(ssh-agent -s)"
$ ssh-add ~/.ssh/id_rsa_github
$ vi ~/.ssh/config
#######################################
Host github.com
    HostName github.com
    IdentityFile ~/.ssh/id_rsa_github
Host 192.168.100.201
    HostName 192.168.100.201
    Port 20022
    IdentityFile ~/.ssh/id_rsa_gitlab_private
#######################################
$ chmod 600 ~/.ssh/config
```

- Copy to clip board and Add SSH key git(lab|hub)

```
$ cat ~/.ssh/id_rsa_github.pub
```

## 日本語のエスケープをしない (git status)

```
$ git config --global core.quotepath false
```

## 日本語の文字化け対応 (gitk)

```
$ git config --global gui.encoding shift-jis
$ git config --global gui.encoding utf-8
```

## ターミナルにブランチ名とか表示（すでに表示されてるなら、いらんかも）

1.git-prompt.shのパスを見つける。

```
find / -name 'git-prompt.sh' 2>/dev/null
./usr/share/git-core/contrib/completion/git-prompt.sh
```

1. .bashrcに以下2行追加

```
  vi .bashrc
  ./usr/share/git-core/contrib/completion/git-prompt.sh
  export PS1='\u@\h [\W $(__git_ps1)] \$ '
```

もしくは、
```
  export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
  source ~/.git-prompt.sh
```
