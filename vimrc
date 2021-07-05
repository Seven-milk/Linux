syntax on
:set nu
set tabstop=2
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
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_path_to_python_interpreter='/usr/bin/python3'
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_strings = 0
let g:ycm_min_num_of_chars_for_completion=2
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
inoremap <expr> <Down>     pumvisible() ? '\<C-n>' : '\<Down>'
inoremap <expr> <Up>       pumvisible() ? '\<C-p>' : '\<Up>'
inoremap <expr> <PageDown> pumvisible() ? '\<PageDown>\<C-p>\<C-n>' : '\<PageDown>'
inoremap <expr> <PageUp>   pumvisible() ? '\<PageUp>\<C-p>\<C-n>' : '\<PageUp>'
set completeopt=longest,menu
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'connorholyday/vim-snazzy'
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
Plug 'vim-scripts/winmanager' 
Plug 'vim-scripts/c.vim'
Plug 'Valloric/YouCompleteMe'

call plug#end()
colorscheme koehler
