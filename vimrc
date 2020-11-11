syntax on
:set nu
set hlsearch
set cursorline
set showcmd
set wildmenu
map R :source $MYVIMRC<CR>
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrap
set scrolloff=5
set mouse=a
set encoding=utf-8
let &t_ut=''
set backspace=indent,eol,start
set foldmethod=indent
set foldlevel=99
set autochdir
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"
let g:winManagerWindowLayout='FileExplorer|TagList|BufExplorer'
let g:winManagerWidth=35
let g:AutoOpenWinManager = 1
nmap <F3> :WMToggle<cr>
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/winmanager'

call plug#end()
let g:SnazzyTransparent = 1
let g:lightline = {
\ 'colorscheme': 'snazzy',
\ }
colorscheme snazzy
