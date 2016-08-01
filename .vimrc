call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-vinegar'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-surround'
Plug 'luochen1990/rainbow'

" Search
Plug 'kien/ctrlp.vim'
Plug 'rking/ag.vim'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Colors
Plug 'nanotech/jellybeans.vim'
Plug 'flazz/vim-colorschemes'

" Clojure
Plug 'guns/vim-clojure-static'
Plug 'tpope/vim-classpath'
Plug 'tpope/vim-fireplace'

call plug#end()

" global settings
filetype plugin indent on "Required for 'vim-clojure-static'
syntax on 		"Enable syntax highlighting
let g:netrw_banner=0
set laststatus=2      "Always display status line 
set mouse=a
set number
set nowrap
set hlsearch
set ignorecase
set incsearch
set clipboard+=unnamedplus "use system clipboard
set tabstop=2
set shiftwidth=2
set expandtab
set backspace=indent,eol,start

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

" jump to the last position when reopening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif
endif

hi diffadd ctermfg=green guifg=#00ff00
hi diffdelete ctermfg=red guifg=#ff0000

color jellybeans

let g:rainbow_conf = {
      \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
      \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
      \   'operators': '_,_',
      \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
      \   'separately': {
      \       '*': {},
      \       'tex': {
      \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
      \       },
      \       'lisp': {
      \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
      \       },
      \       'vim': {
      \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
      \       },
      \       'html': {
      \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
      \       },
      \       'css': 0,
      \   }
      \}

let g:rainbow_active = 1
