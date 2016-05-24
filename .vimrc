set nocompatible   " Disable vi-compatibility
filetype off                  " required
set t_Co=256

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'othree/html5.vim'
Plugin 'Shutnik/jshint2.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'taglist.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
 
" theme

colorscheme lucius
LuciusDark

" airline themes
let g:airline_theme='lucius'

set guioptions-=T " Removes top toolbar
set guioptions-=r " Removes right hand scroll bar
set go-=L " Removes left hand scroll bar
set linespace=15
 
set showmode                    " always show what mode we're currently editing in
set nowrap                      " don't wrap lines
set tabstop=4                   " a tab is four spaces
set smarttab
set tags=tags
set softtabstop=2               " when hitting <BS>, pretend like a tab is removed, even if spaces
set expandtab                   " expand tabs by default (overloadable per file type later)
set shiftwidth=2                " number of spaces to use for autoindenting
set shiftround                  " use multiple of shiftwidth when indenting with '<' and '>'
set backspace=indent,eol,start  " allow backspacing over everything in insert mode
set autoindent                  " always set autoindenting on
set copyindent                  " copy the previous indentation on autoindenting
set number                      " always show line numbers
set ignorecase                  " ignore case when searching
set smartcase                   " ignore case if search pattern is all lowercase,
set timeout timeoutlen=200 ttimeoutlen=100
set visualbell           " don't beep
set noerrorbells         " don't beep
set autowrite  "Save on buffer switch
set mouse=a
 
" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" JSHint on save
let jshint2_save = 1 

" Fast saves
nmap <leader>w :w!<cr>
 
" Down is really the next line
nnoremap j gj
nnoremap k gk
 
"Easy escaping to normal model
imap jj <esc>
 
"Auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>
 
"easier window navigation
 
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
 
"Resize vsplit
nmap 25 :vertical resize 40<cr>
nmap 50 <c-w>=
nmap 75 :vertical resize 120<cr>
 
nmap <C-b> :NERDTreeToggle<cr>
 
"Load the current buffer in Chrome
nmap ,c :!open -a Google\ Chrome<cr>
 
"Show (partial) command in the status line
set showcmd
 
" Create split below
nmap :sp :rightbelow sp<cr>
 
" Quickly go forward or backward to buffer
nmap :bp :BufSurfBack<cr>
nmap :bn :BufSurfForward<cr>
 
highlight Search cterm=underline
 
" Swap files out of the project root
set nobackup
set noswapfile
 
" Easy motion stuff
let g:EasyMotion_leader_key = '<Leader>'
 
autocmd cursorhold * set nohlsearch
autocmd cursormoved * set hlsearch
 
" Remove search results
command! H let @/=""
 
" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
 
 
" Auto-remove trailing spaces
autocmd BufWritePre *.js :%s/\s\+$//e
 
" Edit todo list for project
nmap ,todo :e todo.txt<cr>
 
" CtrlP Stuff
 
" Familiar commands for file/symbol browsing
map <leader>cp :CtrlP<cr>
map <C-r> :CtrlPBufTag<cr>
 
" I don't want to pull up these folders/files when calling CtrlP
set wildignore+=*/vendor/**
set wildignore+=*/bower_components/**
set wildignore+=*/node_modules/**
set wildignore+=*/tmp/**
 
" Open splits
nmap vs :vsplit<cr>
nmap sp :split<cr>
 
" Create/edit file in the current directory
nmap :ed :edit %:p:h/
