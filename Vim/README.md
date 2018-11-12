# Installation

## Vim
- - -

- Download src and Preparation
```
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
$ rm -rf /usr/local/src/vim
```

- Confirm
```
$ vim --version
VIM - Vi IMproved 7.4 (2013 Aug 10, compiled Nov 24 2016 16:44:48)
Included patches: 1-1689
Extra patches: 8.0.0056
Modified by pkg-vim-maintainers@lists.alioth.debian.org
Compiled by pkg-vim-maintainers@lists.alioth.debian.org
Huge version without GUI.  Features included (+) or not (-):
+acl             +farsi           +mouse_netterm   +tag_binary
+arabic          +file_in_path    +mouse_sgr       +tag_old_static
+autocmd         +find_in_path    -mouse_sysmouse  -tag_any_white
-balloon_eval    +float           +mouse_urxvt     -tcl
-browse          +folding         +mouse_xterm     +terminfo
++builtin_terms  -footer          +multi_byte      +termresponse
+byte_offset     +fork()          +multi_lang      +textobjects
+channel         +gettext         -mzscheme        +timers
+cindent         -hangul_input    +netbeans_intg   +title
-clientserver    +iconv           +packages        -toolbar
-clipboard       +insert_expand   +path_extra      +user_commands
+cmdline_compl   +job             -perl            +vertsplit
+cmdline_hist    +jumplist        +persistent_undo +virtualedit
+cmdline_info    +keymap          +postscript      +visual
+comments        +langmap         +printer         +visualextra
+conceal         +libcall         +profile         +viminfo
+cryptv          +linebreak       -python          +vreplace
+cscope          +lispindent      +python3         +wildignore
+cursorbind      +listcmds        +quickfix        +wildmenu
+cursorshape     +localmap        +reltime         +windows
+dialog_con      -lua             +rightleft       +writebackup
+diff            +menu            -ruby            -X11
+digraphs        +mksession       +scrollbind      -xfontset
-dnd             +modify_fname    +signs           -xim
-ebcdic          +mouse           +smartindent     -xsmp
+emacs_tags      -mouseshape      +startuptime     -xterm_clipboard
+eval            +mouse_dec       +statusline      -xterm_save
+ex_extra        +mouse_gpm       -sun_workshop    -xpm
+extra_search    -mouse_jsbterm   +syntax
```

## Dein(Package Manager)
```
$ mkdir -p /use/local/dein
$ curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /use/local/dein/installer.sh
$ sh /use/local/dein/installer.sh ~/.vim/bundle/dein

Install to "/root/.vim/bundle/dein/repos/github.com/Shougo/dein.vim"...
Begin fetching dein...
Cloning into '/root/.vim/bundle/dein/repos/github.com/Shougo/dein.vim'...
remote: Counting objects: 5034, done.
remote: Compressing objects: 100% (12/12), done.
remote: Total 5034 (delta 5), reused 13 (delta 5), pack-reused 5017
Receiving objects: 100% (5034/5034), 986.32 KiB | 1.15 MiB/s, done.
Resolving deltas: 100% (2873/2873), done.
Done.

Please add the following settings for dein to the top of your vimrc (Vim) or init.vim (NeoVim) file:


"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/root/.vim/bundle/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/root/.vim/bundle/dein')
  call dein#begin('/root/.vim/bundle/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/root/.vim/bundle/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here:
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  " You can specify revision/branch/tag.
  call dein#add('Shougo/deol.nvim', { 'rev': '01203d4c9' })

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
```

```
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
$ ln -s /usr/bin/nodejs /usr/bin/node
```

### Code Formatter
```
$ npm i -g prettier
$ npm i -g -y prettier-eslint-cli
```

