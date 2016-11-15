" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'cocopon/iceberg.vim'
Plug 'scrooloose/nerdtree'
call plug#end()

" システム設定
set t_ut=
set t_Co=256
set autoread
set nobackup
set noswapfile
set hidden

" 画面設定
set title
set number
set ruler
set list
set cursorline
set showmatch
set showcmd
set nowrap
set listchars=tab:>-,trail:-,nbsp:%

" 検索設定
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

" 操作設定
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

" iceberg
syntax enable
set background=dark
colorscheme iceberg
highlight Normal ctermbg=NONE
highlight LineNr ctermbg=NONE
highlight nonText ctermbg=NONE

" NERDTree
let g:NERDTreeShowBookmarks=1
if !argc()
  autocmd vimenter * NERDTree|normal gg3j
endif
