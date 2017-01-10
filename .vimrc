" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'cocopon/iceberg.vim'
Plug 'scrooloose/nerdtree'
Plug 'editorconfig/editorconfig-vim'
Plug 'mattn/emmet-vim'
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

" ctermbg=234 reset
autocmd ColorScheme * highlight Error ctermbg=NONE
autocmd ColorScheme * highlight ErrorMsg ctermbg=NONE
autocmd ColorScheme * highlight WarningMsg ctermbg=NONE
autocmd ColorScheme * highlight EndOfBuffer ctermbg=NONE
autocmd ColorScheme * highlight NonText ctermbg=NONE
autocmd ColorScheme * highlight SpecialKey ctermbg=NONE
autocmd ColorScheme * highlight Normal ctermbg=NONE
autocmd ColorScheme * highlight StatusLine ctermbg=NONE
autocmd ColorScheme * highlight TabLineFill ctermbg=NONE
autocmd ColorScheme * highlight TabLineSel ctermbg=NONE
autocmd ColorScheme * highlight Todo ctermbg=NONE

" ctermbg=235 reset
autocmd ColorScheme * highlight ColorColumn ctermbg=NONE
autocmd ColorScheme * highlight CursorColumn ctermbg=NONE
autocmd ColorScheme * highlight CursorLine ctermbg=NONE
autocmd ColorScheme * highlight Folded ctermbg=NONE
autocmd ColorScheme * highlight FoldColumn ctermbg=NONE
autocmd ColorScheme * highlight LineNr ctermbg=NONE
autocmd ColorScheme * highlight SignColumn ctermbg=NONE
autocmd ColorScheme * highlight GitGutterAdd ctermbg=NONE
autocmd ColorScheme * highlight GitGutterChange ctermbg=NONE
autocmd ColorScheme * highlight GitGutterChangeDelete ctermbg=NONE
autocmd ColorScheme * highlight GitGutterDelete ctermbg=NONE
autocmd ColorScheme * highlight SyntasticErrorSign ctermbg=NONE
autocmd ColorScheme * highlight SyntasticStyleErrorSign ctermbg=NONE
autocmd ColorScheme * highlight SyntasticStyleWarningSign ctermbg=NONE
autocmd ColorScheme * highlight SyntasticWarningSign ctermbg=NONE

" iceberg
colorscheme iceberg

" NERDTree
nnoremap <silent><C-e> :NERDTreeToggle<CR>
