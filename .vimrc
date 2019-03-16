call plug#begin()
call plug#end()

set autoindent
set backspace=indent,eol,start
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:>\ ,trail:-,nbsp:+
set nobackup
set nocompatible
set noundofile
set nowrapscan
set number
set relativenumber
set smartcase
set smarttab
set statusline=%f\ %<%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'.(&bomb?'[B]':'')}%=%l,%c%V:%3p%%
set ttyfast
set wildmode=list:longest

let mapleader = "\<Space>"

colorscheme desert