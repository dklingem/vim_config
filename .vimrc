call plug#begin('~/.vim/plugged')

Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'flazz/vim-colorschemes'
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'
Plug 'bling/vim-airline'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-vinegar'
Plug 'luochen1990/rainbow'

call plug#end()

" global settings
let g:netrw_banner=0
set mouse=a
set number
set nowrap
" use system clipboard
set clipboard+=unnamedplus
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start

" Plugin settings
let NERDTreeShowHidden=1

let g:airline#extensions#syntastic#enabled = 1
set laststatus=2

let g:rainbow_active = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" use the_silver_searcher in ctrlp for faster performance
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|tmp)$'
  \ }

color molokai
syntax on
