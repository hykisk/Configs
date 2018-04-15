## 各エイリアスを設定
```
vi /etc/bash.bashrc
alias grep='grep --color=always'
#スクリーンロックを解除して前方検索(ctl-s)出来るように設定※スクリーンロックを未定義にする。
$ stty stop undef
```
## ~/.gitconfig
.gitconfigを差し替える。

## ~/.bash_profile
必要な箇所のみ書き換える。  

## 設定(minimal)

```
$ git config --global user.name "hisk"
$ git config --global user.email hisk@xxx.xxx
$ git config --global push.default matching
```

## 毎回パスワード入れないように。（github使用時）
- ~~.gitconfigに追記する。~~

~~[url "github.com:"]~~  
    ~~InsteadOf = https://github.com/~~  
    ~~InsteadOf = git@github.com:~~  

## github使用準備
- 1). sshキー生成（ローカルで）

```
vi ~/.ssh/known_hosts
#キャッシュを消す。
ssh-keygen -t rsa -f ~/.ssh/id_rsa_git
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa_git
vi ~/.ssh/config
#######################################
Host github.com
    HostName github.com
    IdentityFile ~/.ssh/id_rsa_git
#######################################
chmod 600 ~/.ssh/id_rsa_git
chmod 600 ~/.ssh/id_rsa_git.pub
chmod 600 ~/.ssh/config
```

- 2). クリップボードにコピーして、（githubで）SSH keyを追加  

```
cat ~/.ssh/id_rsa_git.pub
```

## 設定（あればなお良い）
- /etc/bash.bashrc に追記(これを追加しないとln -sがただのコピーになる。追記するときちんとシンボリックリンクとして機能する)
export MSYS=winsymlinks:nativestrict

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


