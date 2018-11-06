if &compatible
  set nocompatible
endif
set runtimepath+=/root/.vim/bundle/dein/repos/github.com/Shougo/dein.vim

let s:dein_dir = expand('~/.vim/bundle/dein')

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Statusline
  call dein#add('itchyny/lightline.vim')
  " Git
  call dein#add('tpope/vim-fugitive')
  " File search ctl-p
  call dein#add('ctrlpvim/ctrlp.vim')
  " Function search ctl-p -> ctl-f
  call dein#add('tacahiroy/ctrlp-funky')
  " CtrlP speed up
  call dein#add('rking/ag.vim')
  " Color Scheme
  call dein#add('tomasr/molokai')
  call dein#add('altercation/vim-colors-solarized')
  " Visualize single-byte space at end of line
  call dein#add('bronson/vim-trailing-whitespace')
  " Tree view
  call dein#add('scrooloose/nerdtree')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif


" Screen display
set cursorline
set number
set cmdheight=2
set laststatus=2

" Number color
highlight LineNr ctermfg=darkyellow

" Cursor movement
set sidescroll=1 " Move left and right scrolls one character at a time
set whichwrap=b,s,h,l,<,>,[,] " Do not stop at the beginning of a line or at the end of a line

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
set diffopt+=vertical

" Tab Space
set expandtab " Enabled Softtab
set tabstop=4    " display
set shiftwidth=4 " input tab

" Statusbar
set statusline=%F%m%r%h%w%=\ %{fugitive#statusline()}\ [%{&ff}:%{&fileencoding}]\ [%Y]\ [%04l,%04v]\ [%l/%L]\ %{strftime(\"%Y/%m/%d\ %H:%M:%S\")}

" Command
set wildmenu " Completion
set history=9999

" Others
set backspace=indent,eol,start
nnoremap <Esc><Esc> :nohlsearch<CR><ESC> " Press Esc twice to highlight erase

""""""""""""""""""""""""""""""
" vim-fugitive (Git)
""""""""""""""""""""""""""""""
nnoremap [fugitive]  <Nop>
nmap <space>g [fugitive]
nnoremap <silent> [fugitive]s :Gstatus<CR><C-w>T
nnoremap <silent> [fugitive]a :Gwrite<CR>
nnoremap <silent> [fugitive]c :Gcommit<CR>
nnoremap <silent> [fugitive]b :Gblame<CR>
nnoremap <silent> [fugitive]d :Gdiff<CR>
nnoremap <silent> [fugitive]m :Gmerge<CR>

""""""""""""""""""""""""""""""
" ctrlp.vim, ctrlp-funky
""""""""""""""""""""""""""""""
if executable('ag')
  let g:ctrlp_use_caching=0 " unuse cache of ctrlp
  let g:ctrlp_user_command='ag %s -i --hidden -g ""'
endif
let g:ctrlp_match_window = 'order:ttb,min:20,max:40,results:100'
let g:ctrlp_show_hidden = 1 " exclude dotfile
let g:ctrlp_types = ['fil']
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_matchtype = 'path'

""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable  = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'

" Vimdiff(git mergetool) Setting and Color
set diffopt-=filler " Do not display '---'
highlight DiffAdd    cterm=bold ctermfg=10 ctermbg=22
highlight DiffDelete cterm=bold ctermfg=10 ctermbg=52
highlight DiffChange cterm=bold ctermfg=10 ctermbg=17
highlight DiffText   cterm=bold ctermfg=10 ctermbg=21
set t_Co=256

" Restore the last cursor position
if has("autocmd")
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
endif

" Syntax
syntax enable

" Color
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
"colorscheme molokai
