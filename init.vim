set t_Co=256
set termguicolors
let g:deus_termcolors=256
set number

call plug#begin('~/.local/share/nvim/plugged')
Plug 'ajmwagar/vim-deus'
Plug 'scrooloose/nerdtree'
Plug 'kien/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
call plug#end()

colorscheme deus

map <C-b> :NERDTreeToggle<CR>
