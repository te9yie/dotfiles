if has('vim_starting')
	for dir in reverse(finddir('.vim.d', escape(getcwd(), ' ').';', -1))
		let rc = findfile('vimrc', fnamemodify(dir, ':p:h'))
		if filereadable(rc)
			source `=rc`
		endif
	endfor
endif
