augroup cs_auto_format
	autocmd!
	autocmd BufWrite,FileWritePre,FileAppendPre *.cs :OmniSharpCodeFormat
augroup END
