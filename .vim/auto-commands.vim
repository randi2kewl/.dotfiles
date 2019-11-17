"*************** AUTO COMMANDS ***************"

" Source file automatically on save wrapping in
" augroup to keep it from recursive sourcing
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END

