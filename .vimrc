" システム設定
set t_Co=256
set autoread
set nobackup
set noswapfile
set hidden
set showcmd

" 画面設定
set title
set number
set cursorline
set showmatch

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
set clipboard=unnamed
set virtualedit=onemore
set backspace=indent,eol,start
set formatoptions+=mM
set fileformat=unix
set fileformats=unix,dos,mac

" マウス設定
set mouse=a

"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/ys/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/ys/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'cocopon/iceberg.vim'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" カラースキーム
syntax on
colorscheme iceberg
