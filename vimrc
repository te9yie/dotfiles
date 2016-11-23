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
set smartcase
set smarttab
set statusline=%f\ %<%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'.(&bomb?'[B]':'')}%=%l,%c%V:%3p%%
set ttyfast
set wildmode=list:longest

filetype off
filetype plugin indent off

function! s:load_project_vimrc(loc)
	let dirs=finddir('.vim.d', escape(a:loc, ' ').';', -1)
	for i in reverse(dirs)
		let dir=fnamemodify(i, ':p:h')
		let rc=findfile('vimrc', dir)
		if filereadable(rc)
			source `=rc`
		endif
	endfor
endfunction

if has('vim_starting')
	call s:load_project_vimrc(getcwd())
endif

filetype plugin indent on
syntax on
