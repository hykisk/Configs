
# Configs

<a id="e.g."></a>
- Create a symbolic link. e.g. tmux
```
$ cd ~
$ git clone https://github.com/hykisk/Configs.git ~/Configs
$ ln -s ~/Configs/tmux/.tmux.conf ~/.tmux.conf
```

</br>

## Git  
- - -

[Git/README.md](./Git/README.md)

</br>

## GitLab

- - -

[GitLab/README.md](./GitLab/README.md)

</br>

## MacOS
- - -

### dircolors.ansi-dark

- 目的  

lsの色を視認性の高い色に変更する。

- 配置

```
~/.setting/dircolors.ansi-dark
```

- gls のインストール

```
sudo port install coreutils
```

- .profile に追記

```
eval $(/opt/local/bin/gdircolors ~/.setting/dircolors.ansi-dark)
alias ls='/opt/local/bin/gls --color=auto'
```

### Solarized Dark.terminal

- 目的  

コンソールの配色を視認性の高い色に変更する。

- 配置

```
~/.terminal/colors/Solarized Dark.terminal
```

- ターミナル > 設定 でSolarizedを追加

</br>

## MSYS2
- - -

- lsで日本語がまた文字化け or 入力できない。  
`.inputrc`に追記。

```
# disable/enable 8bit input
set meta-flag on
set input-meta on
set output-meta on
set convert-meta off
```

</br>

## My-Linux-Config-Set
- - -

- 目的  

lsの色を視認性の高い色に変更する。

- 配置

```
$ ln -s ~/Configs/ls-Color/dircolors.256dark ~/.dircolors
```

- `.bashrc`に追記

```
if [ -f ~/.dircolors ]; then
    if type dircolors > /dev/null 2>&1; then
        eval $(dircolors ~/.dircolors)
    elif type gdircolors > /dev/null 2>&1; then
        eval $(gdircolors ~/.dircolors)
    fi
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
```

- 確認

```
source .bashrc
```

</br>

## PuTTY
- - -

- 目的  

コンソールの配色を視認性の高い色に変更する。

- solarized_dark.reg
ファイル中の Solarized%20Dark(Solarized%20Light) 部分をputtyのセッション名に修正してダブルクリック。
http://momota.github.io/blog/2013/08/22/solarized-putty/

</br>

## sakura
- - -

```
$ cp -ip ./Configs/sakura/keyword/* /c/tools/sakura/keyword
$ mkdir /c/tools/sakura/CSharp
$ cp -ip ./Configs/sakura/CSharp-highlight/* /c/tools/sakura/CSharp
```

- 設定 > タイプ別設定一覧 > インポート > Csharp.iniを指定する。


</br>

## SVN
- - -

[SVN/README.md](./SVN/README.md)


</br>

## tmux
- - -

- [先頭のe.g. に書いた。](#e.g.)

- Puttyごった煮版でtmuxを使うと縦分割した時の罫線がおかしくなるときがある。

- PuTTYの設定変更
  - 文字コードの設定を「UTF-8 (Non-CJK)」に
  - CJK用の文字幅を使用する にチェック
  - Unicodeライン描画コードポイントを使う にチェック

- 参考：http://ptan.info/archives/384#.WAwykeBUvDc

</br>

## Vim
- - -

- 配置

```
$ ln -s ~/Configs/Vim/solarized.vim ~/.vim/colors/solarized.vim
$ ln -s ~/Configs/Vim/.vimrc ~/.vimrc
```

- Clip Board 有効化

```
vim --version | grep clipboard
set clipboard=unnamed
```

- `.bashrc`に追記

```
if [ -f ~/.dircolors ]; then
    if type dircolors > /dev/null 2>&1; then
        eval $(dircolors ~/.dircolors)
    elif type gdircolors > /dev/null 2>&1; then
        eval $(gdircolors ~/.dircolors)
    fi
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
```

- うまくいかないとき
When-different-from-expectation の設定を行う。

</br>

## VisualStudio
- - -

[VisualStudio/README.md](./VisualStudio/README.md)

## Windows-Subsystem-for-Linux
- - -

- [インストール - 初期設定](./Windows-Subsystem-for-Linux/install/README.md)

- 目的  

lsの色を視認性の高い色に変更する。

- 配置

```
$ ln -s ~/Configs/ls-Color/dircolors.256dark ~/.dircolors
```

- `.bashrc`に追記

```
if [ -f ~/.dircolors ]; then
    if type dircolors > /dev/null 2>&1; then
        eval $(dircolors ~/.dircolors)
    elif type gdircolors > /dev/null 2>&1; then
        eval $(gdircolors ~/.dircolors)
    fi
fi

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
```

- 目的
コンソールの配色を視認性の高い色に変更する。（Git含む）

- 配置

```
$ ln -s ~/Configs/Windows-Subsystem-for-Linux/git-prompt.sh ~/git-prompt.sh
$ ln -s ~/Configs/Windows-Subsystem-for-Linux/.bashrc ~/.bashrc
$ ln -s ~/Configs/Windows-Subsystem-for-Linux/.gitconfig ~/.gitconfig
```

- （配置で済み）ターミナルにブランチ名等を表示

1. git-prompt.shのパスを見つける。

```
find . -iname 'git-prompt.sh'
./usr/share/git-core/contrib/completion/git-prompt.sh
```

2. `.bashrc`に以下2行追加（見やすい方で良い）

  - パターンＡ

```
./usr/share/git-core/contrib/completion/git-prompt.sh
export PS1='\u@\h [\W $(__git_ps1)] \$ '
```

  - パターンＢ

```
export PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
source ~/git-prompt.sh
```

- （配置で済み）パス区切り文字を、Windows系からUNIX系にする。`.bashrc`に追加

```
function winpath()
{
  if [ -p /dev/stdin ]; then
    input_path=$(cat -)
  else
    input_path=$(echo $@)
  fi
  /bin/readlink -f $input_path | sed -e "s|^\(/mnt/\([a-z]\)\)\(.*\)|\U\2:\E\3|" -e "s|/|\\\\|g"
}

function linuxpath()
{
  if [ -p /dev/stdin ]; then
    input_path=$(cat -)
  else
    input_path=$(echo $@)
  fi

  echo $input_path | sed -e "s|\\\\|/|g" -e "s|^\([A-Za-z]\)\:/\(.*\)|/mnt/\L\1\E/\2|"
}

export TMPDIR=`echo "$(/mnt/c/Windows/System32/cmd.exe /C echo %TEMP%)" | tr -d "\r" | linuxpath`
```

- 毎回パスワード入れないように。（github使用時）

1. `.gitconfig`に追記する。~~★Permission denied (publickey)になるため、一度githubにアクセスし、ユーザ/パスを入力してから以下を追記。~~

```
[url "github.com:"]
    InsteadOf = https://github.com/
    InsteadOf = git@github.com:
```

2. sshキー生成（ローカルで）
- 実行する。

```
$ ssh-keygen -t rsa -C hisk@xxx.xxx
Enter file in which to save the key (/root/.ssh/id_rsa):github_id_rsa.pub
```
- github_id_rsa（秘密鍵）とgithub_id_rsa.pub（公開鍵）のファイルが確認。

3. `~/.ssh/config`に追記。
```
Host github.com
 HostName      github.com
 IdentityFile  ~/.ssh/github_id_rsa
 User          git
```

4. パーミッション変更

```
$ chmod 600 ~/.ssh/config
```

5. クリップボードにコピー

```
~/.ssh/github_id_rsa.pub
```

6. （github上で）sshキー追加
- ブラウズでgithubにアクセスして、SSH keys （new SSH key）。
- （公開鍵）をペースト。


## YAMAHA-RTX1200
- - -

