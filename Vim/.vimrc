set runtimepath+=/home/hykisk/.vim/bundle/dein/repos/github.com/Shougo/dein.vim

let s:dein_dir = expand('~/.vim/bundle/dein')

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " Clean
  ":call map(dein#check_clean(), "delete(v:val, 'rf')")
  ":call dein#recache_runtimepath()

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
  " Find syntax error
  call dein#add('w0rp/ale')
  " Javasctipt code formatter local installed

  " JS highlight
  call dein#add('othree/yajs.vim')
  " Snippet
  call dein#add('Shougo/neocomplete.vim')
  call dein#add('Shougo/neosnippet')
  call dein#add('Shougo/neosnippet-snippets')
  " High speed cursor movement
  call dein#add('Lokaltog/vim-easymotion')
  " Markdown table formatter
  call dein#add('dhruvasagar/vim-table-mode')
  " Markdown highlight
  call dein#add('plasticboy/vim-markdown')
  " Markdown viewer
  call dein#add('kannokanno/previm')
  " Auto close tag
  call dein#add('alvan/vim-closetag')

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
set nowrapscan

" Compare
set diffopt=iwhite " Ignore whitespace
set diffopt+=vertical

" Tab Space
set expandtab " Enabled Softtab
set tabstop=4    " display
set shiftwidth=4 " input tab

" Command
set wildmenu " Completion
set history=9999

" Others
set backspace=indent,eol,start
nnoremap <Esc><Esc> :nohlsearch<CR><ESC> " Press Esc twice to highlight erase
nmap <C-q> :set nowrap<CR>
nmap <S-q> :set wrap<CR>

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
" Statusbar
set statusline=%F%m%r%h%w%=\ %{fugitive#statusline()}\ %{ALEGetStatusLine()}\ [%{&ff}:%{&fileencoding}]\ [%Y]\ [%04l,%04v]\ [%l/%L]\ %{strftime(\"%Y/%m/%d\ %H:%M:%S\")}


""""""""""""""""""""""""""""""
" ctrlp.vim, ctrlp-funky
""""""""""""""""""""""""""""""
if executable('ag')
  let g:ctrlp_use_caching=0 " unuse cache of ctrlp
  let g:ctrlp_user_command='ag %s -i --hidden -g ""'
endif
let g:ctrlp_working_path_mode = 0
let g:ctrlp_match_window = 'order:ttb,min:20,max:40,results:100'
let g:ctrlp_show_hidden = 1 " exclude dotfile
let g:ctrlp_types = ['fil']
let g:ctrlp_extensions = ['funky']
let g:ctrlp_funky_matchtype = 'path'

""""""""""""""""""""""""""""""
" NERDTree
""""""""""""""""""""""""""""""
map <C-n> :NERDTreeToggle<CR>
map <C-l> gt
map <C-h> gT
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable  = '▶'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeShowHidden = 1
" If there is no argument, it will start up
autocmd vimenter * if !argc() | NERDTree | endif

" move tab: gt, gT

"----------------------------------------------------------
" ALE(ESLint)
"----------------------------------------------------------
nmap [ale] <Nop>
map <C-k> [ale]
" display:off/on
nmap <silent> [ale]<C-K> <Plug>(ale_toggle)
nmap <silent> [ale]<C-P> <Plug>(ale_previous)
nmap <silent> [ale]<C-N> <Plug>(ale_next)
nmap <silent> [ale]<C-F> <Plug>(ale_fix)
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'

let g:ale_linters = {'javascript': ['eslint']}
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'

let g:ale_fixers = {}
let g:ale_fixers['javascript'] = ['prettier-eslint']
let g:ale_fix_on_save = 0
let g:ale_javascript_prettier_use_local_config = 1

let g:ale_sign_column_always = 0
" disable when open
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
" disable when editing
let g:ale_lint_on_text_changed = 'never'
let g:ale_set_loclist = 0
let g:ale_set_quickfix = 0
let g:ale_open_list = 0
let g:ale_keep_list_window_open = 0

"----------------------------------------------------------
" easymotion
"----------------------------------------------------------
nmap ,, <Plug>(easymotion-sn)
xmap ,, <Plug>(easymotion-sn)
omap ,, <Plug>(easymotion-tn)
let g:EasyMotion_keys = 'faslkhjnmie,rmo;uwzpqtdgxcvby'
let g:EasyMotion_smartcase = 1

"----------------------------------------------------------
" prettier (when ignore) // prettier-ignore
"----------------------------------------------------------

"----------------------------------------------------------
" Auto close tag
"----------------------------------------------------------
let g:closetag_filenames = '*.html,*.xml,*.css'

"----------------------------------------------------------
" Markdown
"----------------------------------------------------------
map <C-w><C-M> :PrevimOpen<CR>
autocmd BufRead,BufNewFile *.mkd  set filetype=markdown
autocmd BufRead,BufNewFile *.md  set filetype=markdown
let g:table_mode_corner = '|'
" for get windows path : /usr/bin/winlxss
let g:previm_open_cmd="bash winlxss"
let g:previm_enable_realtime=1

"----------------------------------------------------------
" Snippet
"----------------------------------------------------------
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#min_keyword_length = 3
let g:neocomplete#enable_auto_delimiter = 1
let g:neocomplete#auto_completion_start_length = 3
"let g:syntastic_always_populate_loc_list = 0
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
inoremap <expr><BS> neocomplete#smart_close_popup()."<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."<C-h>"
imap <expr><CR> neosnippet#expandable() ? "<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"
imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>"


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

"----------------------------------------------------------
" Syntax
"----------------------------------------------------------
syntax enable
":let g:xml_syntax_folding = 1
":set foldmethod=indent
"au BufNewFile,BufRead *.xaml setf xml

" Color
let g:solarized_termcolors=256
set background=dark
colorscheme solarized
"colorscheme molokai

"----------------------------------------------------------
" Clipboard
"----------------------------------------------------------
vnoremap <Space> <Nop>
nnoremap <silent> <Space>y :.w !win32yank.exe -i<CR><CR>
nnoremap <silent> <Space>p :r !win32yank.exe -o<CR>

