#!/bin/bash

echo "############ BEFORE ##########################"
ls -al -d `find ~ -maxdepth 1 -name ".*"`

echo "############ Create symbolic link ############"
ln -sf /mnt/c/work/Configs/Windows-Subsystem-for-Linux/.bash_profile ~/.bash_profile
ln -sf /mnt/c/work/Configs/Windows-Subsystem-for-Linux/.bashrc ~/.bashrc
ln -sf /mnt/c/work/Configs/Windows-Subsystem-for-Linux/.eslintrc.json ~/.eslintrc.json
ln -sf /mnt/c/work/Configs/Windows-Subsystem-for-Linux/.gitconfig ~/.gitconfig
ln -sf /mnt/c/work/Configs/Windows-Subsystem-for-Linux/.prettierrc.js ~/.prettierrc.js
ln -sf /mnt/c/work/Configs/Windows-Subsystem-for-Linux/bin/winlxss.sh ~/bin/winlxss.sh
ln -sf /mnt/c/work/Configs/Windows-Subsystem-for-Linux/bin/.git-prompt.sh ~/.git-prompt.sh
ln -sf /mnt/c/work/Configs/Vim/.vimrc ~/.vimrc
ln -sf /mnt/c/work/Configs/Vim/cheatsheet.md ~/.cheatsheet.md
ln -sf /mnt/c/work/Configs/ls-Color/ ~/.dircolors-solarized
ln -sf /mnt/c/work/Configs/tmux/.tmux.conf ~/.tmux.conf

ln -sf /usr/local/bin/vim /usr/bin/vi
ln -sf ~/bin/winlxss.sh /usr/bin/winlxss
echo "############ AFTER ###########################"
ls -al -d `find ~ -maxdepth 1 -name ".*"`

