#!/bin/bash

echo "############ BEFORE ##########################"
ls -al -d `find ~ -maxdepth 1 -name ".*"`

echo "############ Backup ##########################"
cp -p ~/.bashrc ~/.bashrc.org
cp -p ~/.profile ~/.profile.org

echo "############ Create symbolic link ############"
mkdir -p ~/bin
ln -sf /mnt/c/work/Configs/Windows-Subsystem-for-Linux/.bash_profile ~/.bash_profile
ln -sf /mnt/c/work/Configs/Windows-Subsystem-for-Linux/.bashrc ~/.bashrc
ln -sf /mnt/c/work/Configs/Windows-Subsystem-for-Linux/bin/winlxss.sh ~/bin/winlxss.sh
ln -sf /mnt/c/work/Configs/Windows-Subsystem-for-Linux/.gitconfig ~/.gitconfig
#ln -sf /mnt/c/work/Configs/Vim/.eslintrc.json ~/.eslintrc.json
#ln -sf /mnt/c/work/Configs/Vim/.prettierrc.js ~/.prettierrc.js
#ln -sf /mnt/c/work/Configs/Vim/cheatsheet.md ~/.cheatsheet.md
#ln -sf /mnt/c/work/Configs/Vim/.vimrc ~/.vimrc
ln -sf /mnt/c/work/Configs/Git/.git-prompt.sh ~/.git-prompt.sh
ln -sf /mnt/c/work/Configs/ls-Color/. ~/.dircolors-solarized
ln -sf /mnt/c/work/Configs/tmux/.tmux.conf ~/.tmux.conf

echo "############ AFTER ###########################"
ls -al -d `find ~ -maxdepth 1 -name ".*"`
