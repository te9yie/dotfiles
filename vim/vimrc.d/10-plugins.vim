if has('vim_starting')
	for dir in reverse(finddir('.vim.d', escape(getcwd(), ' ').';', -1))
		call pathogen#surround(fnamemodify(dir, ':p:h'))
	endfor
endif
execute pathogen#infect()
