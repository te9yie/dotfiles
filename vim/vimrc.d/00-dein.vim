let s:dein_dir = expand('~/.vim/dein')

if &runtimepath !~# '/dein.vim'
	let s:dein_repo_dir = s:dein_dir.'/repos/github.com/Shougo/dein.vim'
	if !isdirectory(s:dein_repo_dir)
		execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
	endif
	execute 'set runtimepath^='.s:dein_repo_dir
endif

if dein#load_state(s:dein_dir)
	call dein#begin(s:dein_dir)

	let s:rc_dir = expand('~/.vim/rc')
	let s:toml = s:rc_dir.'/dein.toml'
	let s:lazy_toml = s:rc_dir.'/lazy_dein.toml'
	let s:local_toml = s:rc_dir.'/local_dein.toml'

	call dein#load_toml(s:toml, {'lazy': 0})
	call dein#load_toml(s:lazy_toml, {'lazy': 1})
	call dein#load_toml(s:local_toml, {'lazy': 1})

	call dein#end()
	call dein#save_state()
endif

if dein#check_install()
	call dein#install()
endif
