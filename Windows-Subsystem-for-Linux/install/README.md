# Windows Subsystem for Linux

## インストール
- - -

1. 設定 > 更新とセキュリティ > 開発者向け ： 開発者モードON
1. WSL有効  
    <img src="./img/enable.jpg" alt="enable">  
1. インストール

```
$ lxrun /install
```

## 色変更
- - -

- ツールでの変更が基本。
1. https://github.com/Microsoft/console
1. VSでビルド。
1. exeを移動。ColorTool\ColorTool\bin\Release\exe >>> ColorTool\exe
1. cmd起動（bashではない）
1. xxx.exeと同じ階層で実行して、cmdを起動しなおす。bashに反映されていたらOK。
```
$ .\colortool.exe solarized_dark
```

- Color Scheme  
`./cmd-color-scheme.reg`    

![color](./img/cmd-color-scheme.png)

## パッケージ更新
- - -

### 海外サーバ >>> 日本サーバ（初回一回のみ）

```
sudo sed -i -e 's%http://.*.ubuntu.com%http://ftp.jaist.ac.jp/pub/Linux%g' /etc/apt/sources.list
```

### 最新に（基本いつも）

```
$ sudo apt update
$ sudo apt upgrade
```

## 開発ツールのインストール
- - -

~~$ sudo yum groupinstall "Development Tools"~~
```
$ sudo apt-get install build-essential
```

## Git
- - -

### 新しいものをインストール
```
$ sudo apt-get update
$ sudo apt-get install git
$ sudo apt install tig

```
### OS間のファイル区切り文字がちがいを解決

1. 以下を.bashrcに追加

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

## アンインストール
- - -
（コマンドプロンプトの配色設定は残る）
```
lxrun /uninstall /full
```
