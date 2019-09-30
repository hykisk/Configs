## minimal

```
$ git config --global user.name "hisk"
$ git config --global user.email hisk@xxx.xxx
$ git config --global push.default simple
```

```
$ git config --local user.name "hiroyuki-san"
$ git config --local user.email "hiroyuki-san@xxx.xxx"
$ git config --global push.default simple
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
#######################################
$ chmod 600 ~/.ssh/config
```

- Copy to clip board and Add SSH key git(lab|hub)

```
$ cat ~/.ssh/id_rsa_github.pub
```

## 文字化け対応(git status)

```
$ git config --global core.quotepath false
```

## 文字化け対応(gitk)

```
$ git config --global gui.encoding shift-jis
$ git config --global gui.encoding utf-8
```

## ターミナルにブランチ名とか表示（すでに表示されてるなら、いらんかも）

1.git-prompt.shのパスを見つける。

```
find . -name 'git-prompt.sh'
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
