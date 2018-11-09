## MacOS
- - -


### Change Dircolor

```
ln -s ~/Configs/MacOS/dircolors.ansi-dark ~/.setting/dircolors.ansi-dark
echo 'eval $(/opt/local/bin/gdircolors ~/.setting/dircolors.ansi-dark)' >> ~/.profile
echo 'alias ls="/opt/local/bin/gls --color=auto"' >> ~/.profile
```

- Installation of gls

```
sudo port install coreutils
```

### Solarized Dark.terminal

```
ln -s "~/Configs/MacOS/Solarized Dark.terminal" "~/.terminal/colors/Solarized Dark.terminal"
```

- (GUI)Terminal > settings
</br> Add `Solarized`

