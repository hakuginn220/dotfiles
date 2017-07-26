" plug
call plug#begin('~/.vim/plugged')
Plug 'cocopon/iceberg.vim'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'othree/yajs.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'fleischie/vim-styled-components'
Plug 'fatih/vim-go'
call plug#end()

" system
set t_ut=
set t_Co=256
set autoread
set nobackup
set noswapfile
set hidden

" screen
set title
set number
set ruler
set list
set cursorline
set showmatch
set showcmd
set nowrap
set listchars=tab:»-,trail:-,eol:↲,extends:»,precedes:«,nbsp:%

" search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

" operation
set autoindent
set smartindent
set expandtab
set tabstop=2
set shiftwidth=2
set mouse=a
set clipboard=unnamed,autoselect
set virtualedit=onemore
set backspace=indent,eol,start
set formatoptions+=mM
set fileformat=unix
set fileformats=unix,dos,mac
set whichwrap=b,s,h,s,<,>,[,]

" theme
colorscheme iceberg

" command
nnoremap <silent><C-e> :NERDTreeToggle<CR>
