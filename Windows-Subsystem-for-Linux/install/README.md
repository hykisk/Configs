# Windows Subsystem for Linux

## Installation of WSL
- - -

1. 設定 > 更新とセキュリティ > 開発者向け ： 開発者モードON
1. WSL有効
<br>![enable_dbg](./img/enable.jpg)
1. インストール

```
$ lxrun /install
```

## Color Scheme
- - -

- Pattern A: `regedit`
  - [cmd-color-scheme.reg](./cmd-color-scheme.reg)
  - ![color](./img/cmd-color-scheme.png)

- Pattern B: `tool`
1. https://github.com/Microsoft/console
1. build on VS.

  ```cmd
  $ move -p C:\tools\ColorTool\ColorTool\bin\Release\colortool.exe C:\tools\ColorTool
  $ move -p C:\tools\ColorTool\ColorTool\bin\Release\colortool.exe.config   C:\tools\ColorTool
  $ C:\tools\ColorTool\colortool.exe solarized_dark
  ```

## Change cmd property
- - -

- property/default
  - ![property](./img/cmd-buffer-size.png)

### Change the use repository of apt-get to Japanese server
- - -

```
sudo sed -i -e 's%http://.*.ubuntu.com%http://ftp.jaist.ac.jp/pub/Linux%g' /etc/apt/sources.list
```

### Update repository
- - -

```
$ sudo apt -y update
$ sudo apt -y upgrade
```

## Development Tools
- - -

~~$ sudo yum groupinstall "Development Tools"~~
```
$ sudo apt-get -y install build-essential
```

## Others
[others installtaion](../../My-Linux-Config-Set/README.md)

## Git
- - -
- 新しいものをインストール **公式リポのバージョンは古い**

```
$ sudo apt-get -y install apt-file
$ sudo apt-file update
$ sudo apt-file search add-apt-repository
$ sudo apt-get install software-properties-common

#非公式リポジトリの追加
$ sudo add-apt-repository ppa:git-core/ppa
$ sudo apt-get update
$ sudo apt-get upgrade
#gitのインストール
$ sudo apt-get -y install git

$ git --version
```

- if use git(hub|lab), Add ssh-key.
[## Add SSH Key](../../Git/README.md)

## tig
```
$ sudo apt-get -y install tig
```

## Create symbolic link
- [createln.sh](../../createln.sh)
- git `--assume-unchanged`
```
$ cd /mnt/c/work/Configs
$ git update-index --assume-unchanged ./Windows-Subsystem-for-Linux/.gitconfig
$ git update-index --assume-unchanged ./Windows-Subsystem-for-Linux/bin/winlxss.sh
```
## tmux
[Installation ##Ubuntu](../../tmux/README.md)

## Vim
[Installation](../../Vim/README.md)

## Uninstall WSL
- - -
```
lxrun /uninstall /full
```
