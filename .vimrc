"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/unite.vim'
NeoBundle 'editorconfig/editorconfig-vim'
NeoBundle 'cocopon/iceberg.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'digitaltoad/vim-pug'
NeoBundle 'statianzo/vim-jade'
NeoBundle 'stephenway/postcss.vim'
NeoBundle 'othree/yajs.vim'
NeoBundle 'mattn/emmet-vim'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

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
