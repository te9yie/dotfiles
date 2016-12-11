function! s:walk_vimrc(loc)
	for dir in reverse(finddir('.vim.d', escape(a:loc, ' ').';', -1))
		let dir_path = fnamemodify(dir, ':p:h')
		call pathogen#surround(dir_path)
		let rc = findfile('vimrc', dir_path)
		if filereadable(rc)
			source `=rc`
		endif
	endfor
endfunction

if has('vim_starting')
	call s:walk_vimrc(getcwd())
endif
execute pathogen#infect()
