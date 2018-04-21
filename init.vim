call plug#begin('~/.local/share/nvim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'posva/vim-vue' 
Plug 'jiangmiao/auto-pairs'
call plug#end()


let g:solarized_termcolors=16
set background=dark
colorscheme solarized

set number

map <C-b> :NERDTreeToggle<CR>

nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l
