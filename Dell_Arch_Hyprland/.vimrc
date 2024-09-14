filetype off

set termguicolors
colorscheme dracula

syntax on
filetype plugin indent on

set modelines=0
set hidden
set ttyfast
set showmode
set showcmd

set number
set ruler

set encoding=utf-8

set wrap
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

autocmd FileType python setlocal shiftwidth=4 softtabstop=4 expandtab

set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch


highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
