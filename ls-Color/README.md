# ls-Color

## lsの色を視認性の高い色に変更する
- - -

- Sever
```
$ mkdir ~/.dircolors-solarized
```
- Client
```
$ scp -P 122 /c/work/Configs/ls-Color/* root@192.168.100.101:~/.dircolors-solarized/.
```
- Serve(write to .bash_profile)
```
$ eval `dircolors ~/.dircolors-solarized/dircolors.ansi-dark`
```
