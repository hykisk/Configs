set nocompatible

" Screen display
set cursorline
set number

" Cursor movement
set sidescroll=1 " Move left and right scrolls one character at a time

" File processing
set nobackup
set noswapfile
set nowritebackup

" Search / Replace
set hlsearch
set incsearch
set ignorecase " Uppercase and lowercase are not distinguished
set smartcase  " Only when searching with a mixture of uppercase and lowercase letters, distinguish

" Compare
set diffopt=iwhite " Ignore whitespace

" Search / Replace
set hlsearch
set incsearch
set ignorecase " Uppercase and lowercase are not distinguished
set smartcase  " Only when searching with a mixture of uppercase and lowercase letters, distinguish

" Tab Space
set expandtab " Enabled Softtab
set tabstop=2
set shiftwidth=2

" Statusbar
set statusline=%F%m%r%h%w%=\ %{fugitive#statusline()}\ [%{&ff}:%{&fileencoding}]\ [%Y]\ [%04l,%04v]\ [%l/%L]\ %{strftime(\"%Y/%m/%d\ %H:%M:%S\")}

" Others
nnoremap <Esc><Esc> :nohlsearch<CR><ESC> " Press Esc twice to highlight erase
"zsyntax enable
"set background=dark
"colorscheme solarized
