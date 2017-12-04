" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
set hidden		" Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

set number
set ruler

syntax enable

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set ai
set si

set tags+=tags;~

colo moody

autocmd FileType tex setlocal spell spelllang=en_us
filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"
set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

let g:Tex_MultipleCompileFormats = 'pdf'
let g:Tex_DefaultTargetFormat = 'pdf'
let g:Tex_ViewRule_pdf = 'evince'

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

augroup sh
    au BufNewFile *.sh 0r ~/.vim/skeleton.sh | call CreateSH()
augroup end

augroup pl
    au BufNewFile *.pl 0r ~/.vim/skeleton.pl | call CreateSH()
augroup end

augroup py
    au BufNewFile *.py 0r ~/.vim/skeleton.py | call CreateSH()
augroup end

augroup c
    au BufNewFile *.c 0r ~/.vim/skeleton.c | call CreateC()
augroup end

augroup cpp
    au BufNewFile *.cpp 0r ~/.vim/skeleton.cpp | call CreateCPP()
augroup end

augroup java
    au BufNewFile *.java 0r ~/.vim/skeleton.java | call CreateJava()
augroup end

augroup tex
    au BufNewFile *.tex 0r ~/.vim/skeleton.tex
augroup end

command Main call CreateMain()
command -nargs=1 Constr call CreateConstr(<f-args>)
command -nargs=* Func call CreateFunc(<f-args>)

function CreateSH()
    exe "normal! 3G$i" . expand("%:t")
    exe "normal! 6G$i" . expand(strftime("%d/%m/%y"))
    normal! G
endfunction

function CreateC()
    exe "normal! 2G$i" . expand("%:t")
    exe "normal! 5G$i" . expand(strftime("%d/%m/%y"))
    normal! Gdd13G
endfunction

function CreateCPP()
    exe "normal! 2G$i" . expand("%:t")
    exe "normal! 5G$i" . expand(strftime("%d/%m/%y"))
    normal! Gdd13G
endfunction

function CreateJava()
    exe ":normal! 6G$i" . expand(strftime("%d/%m/%y"))
    exe ":normal! 8G3f i" . expand("%:r")
    normal! Gdd9G
endfunction

function CreateMain()
    let ext = expand("%:e")
    
    if ext ==# "java"
        -1r ~/.vim/Main.java
        exe ":normal! 4jdd"
    elseif ext ==# "c"
        -1r ~/.vim/Main.c
        exe ":normal! 5jdd"
    endif
endfunction

function CreateConstr(args)
    let ext = expand("%:e")

    if ext ==# "java"
        -1r ~/.vim/Constr.java
        exe ":normal! 7li " . expand("%:r")
        exe ":normal! la" . a:args
    endif
endfunction

function CreateFunc(name,args)
    let ext = expand("%:e")
    let decl = a:name . '(' . a:args . ')'

    exe ":normal! i" . decl . ' {'
    exe ":normal! o"
    exe ":normal! o" . '}'

    if ext ==# "c"
        exe ":normal! gg"
        
        if search('main')
            exe ":normal! 2k^"

            if getline(".")[col(".")-1] == '#'
                exe ":normal! o"
            endif

            exe ":normal! o" . decl . ';'
        endif
    endif
endfunction
