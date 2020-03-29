call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-surround'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'thinca/vim-quickrun'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'rhysd/vim-clang-format', { 'for': 'cpp' }
call plug#end()

set statusline=%f\ %<%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'.(&bomb?'[B]':'')}%=%l,%c%V:%3p%%

let mapleader = "\<Space>"

let g:clang_format#auto_format = 1
