if !filereadable(expand("~/.vim/autoload/plug.vim"))
	execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin()
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
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

augroup nerdtree-opendir
	autocmd!
	autocmd StdinReadPre * let s:std_in=1
	autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
augroup END
