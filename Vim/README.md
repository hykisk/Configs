# Installation

## Vim
- - -

- Download src and Preparation

```
$ sudo su -

$ cd /usr/local/src
$ git clone https://github.com/vim/vim.git
$ cd vim

$ sudo apt-get -y install gcc-4.9 autoconf automake make lua5.3 luajit liblua5.3-0 liblua5.3-dev libperl5.22 libperl-dev libpython-dev python-dev python3-dev tcl tcl-dev

$ mkdir /usr/include/lua5.3/include
$ cp -p /usr/include/lua5.3/*.h /usr/include/lua5.3/include/.
$ cp -p /usr/include/lua5.3/*.hpp /usr/include/lua5.3/include/.
$ ls -la /usr/local/lib/liblua.so
ls: cannot access '/usr/local/lib/liblua.so': No such file or directory

$ sudo ln -s /usr/lib/x86_64-linux-gnu/liblua5.3.so /usr/local/lib/liblua.so
$ ls -la /usr/local/lib/liblua.so
lrwxrwxrwx 1 root root 38 Aug 29 00:54 /usr/local/lib/liblua.so -> /usr/lib/x86_64-linux-gnu/liblua5.3.so
```

- Make and Install
```
$ ./configure --with-features=huge --disable-darwin --disable-selinux --enable-fail-if-missing --enable-luainterp --with-lua-prefix=/usr/include/lua5.3 --enable-perlinterp=dynamic --enable-pythoninterp --enable-python3interp --enable-tclinterp --enable-cscope --enable-multibyte --enable-xim --enable-fontset --with-compiledby=xxxkurosukexxx --enable-gui=no --prefix=/usr/local
$ make
$ sudo make install
$ cd ~
$ ln -sf /usr/local/bin/vim /usr/bin/vim
```

- Confirm

```
$ vim --version
VIM - Vi IMproved 8.2 (2019 Dec 12, compiled Jan 18 2020 12:45:31)
Included patches: 1-126
Compiled by xxxkurosukexxx
Huge version without GUI.  Features included (+) or not (-):
+acl               -farsi             -mouse_sysmouse    -tag_old_static
+arabic            +file_in_path      +mouse_urxvt       -tag_any_white
+autocmd           +find_in_path      +mouse_xterm       +tcl
+autochdir         +float             +multi_byte        +termguicolors
-autoservername    +folding           +multi_lang        +terminal
-balloon_eval      -footer            -mzscheme          +terminfo
+balloon_eval_term +fork()            +netbeans_intg     +termresponse
-browse            -gettext           +num64             +textobjects
++builtin_terms    -hangul_input      +packages          +textprop
+byte_offset       +iconv             +path_extra        +timers
+channel           +insert_expand     +perl/dyn          +title
+cindent           +job               +persistent_undo   -toolbar
-clientserver      +jumplist          +popupwin          +user_commands
-clipboard         +keymap            +postscript        +vartabs
+cmdline_compl     +lambda            +printer           +vertsplit
+cmdline_hist      +langmap           +profile           +virtualedit
+cmdline_info      +libcall           +python/dyn        +visual
+comments          +linebreak         +python3/dyn       +visualextra
+conceal           +lispindent        +quickfix          +viminfo
+cryptv            +listcmds          +reltime           +vreplace
+cscope            +localmap          +rightleft         +wildignore
+cursorbind        +lua               -ruby              +wildmenu
+cursorshape       +menu              +scrollbind        +windows
+dialog_con        +mksession         +signs             +writebackup
+diff              +modify_fname      +smartindent       -X11
+digraphs          +mouse             -sound             -xfontset
-dnd               -mouseshape        +spell             -xim
-ebcdic            +mouse_dec         +startuptime       -xpm
+emacs_tags        -mouse_gpm         +statusline        -xsmp
+eval              -mouse_jsbterm     -sun_workshop      -xterm_clipboard
+ex_extra          +mouse_netterm     +syntax            -xterm_save
+extra_search      +mouse_sgr         +tag_binary
```

- Exit

`$ exit`

## Dein(Package Manager)

```
$ mkdir -p ~/dein
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > ~/dein/installer.sh
$ sh ~/dein/installer.sh ~/.vim/bundle/dein

Install to "/root/.vim/bundle/dein/repos/github.com/Shougo/dein.vim"...
Begin fetching dein...
Cloning into '/root/.vim/bundle/dein/repos/github.com/Shougo/dein.vim'...
remote: Counting objects: 5034, done.
remote: Compressing objects: 100% (12/12), done.
remote: Total 5034 (delta 5), reused 13 (delta 5), pack-reused 5017
Receiving objects: 100% (5034/5034), 986.32 KiB | 1.15 MiB/s, done.
Resolving deltas: 100% (2873/2873), done.
Done.


$ vi ~/.vimrc

### Succeed ###
[dein] ( 9/19) [+++++++++-----------] yajs.vim
[dein] (10/19) [++++++++++----------] vim-fugitive
[dein] (11/19) [+++++++++++---------] lightline.vim
[dein] (12/19) [++++++++++++--------] nerdtree
[dein] (13/19) [+++++++++++++-------] neosnippet
[dein] (14/19) [++++++++++++++------] vim-colors-solarized
[dein] (15/19) [+++++++++++++++-----] previm
[dein] (16/19) [++++++++++++++++----] ale
[dein] (17/19) [+++++++++++++++++---] vim-table-mode
[dein] (18/19) [++++++++++++++++++--] neocomplete.vim
[dein] Updated plugins:
[dein]   vim-closetag(1 change)
[dein]   molokai(1 change)
[dein]   ag.vim(1 change)
[dein]   vim-trailing-whitespace(1 change)
[dein]   neosnippet-snippets(1 change)
[dein]   vim-markdown(1 change)
[dein]   open-browser.vim(1 change)
[dein]   ctrlp.vim(1 change)
[dein]   ctrlp-funky(1 change)
[dein]   vim-colors-solarized(1 change)
[dein]   vim-fugitive(1 change)
[dein]   yajs.vim(1 change)
[dein]   lightline.vim(1 change)
[dein]   nerdtree(1 change)
[dein]   neosnippet(1 change)
[dein]   previm(1 change)
[dein]   vim-table-mode(1 change)
[dein]   neocomplete.vim(1 change)
[dein]   ale(1 change)
[dein] Done: (2018/11/10 23:11:59)Press ENTER or type command to continue
```

## Plugins
- - -

### CtrlP speed up
~~$ sudo apt-get -y install pcre-devel xz-devel xz xz-devel~~
```
$ sudo apt -y install silversearcher-ag
```

### JS Sysntax error

- 1).Need nodejs (https://github.com/tj/n)
```

$ sudo apt-get install -y nodejs npm
$ node -v
# When installing with apt-get, the version is old.

$ sudo npm cache clean
$ sudo npm install n -g
$ sudo n stable
$ sudo ln -sf /usr/local/bin/node /usr/bin/node
$ node -v
$ sudo apt-get purge -y nodejs npm
```

- 2).Installation of eslint
```
$ npm i -g eslint
$ ln -s /usr/local/bin/eslint /usr/bin/eslint
```

### Code Formatter
```
$ npm i -g prettier
$ npm i -g -y prettier-eslint-cli
```

