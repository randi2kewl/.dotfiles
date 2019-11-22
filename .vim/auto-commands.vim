"*************** AUTO COMMANDS ***************"

" Source file automatically on save wrapping in
" augroup to keep it from recursive sourcing
augroup autosourcing
	autocmd!

	autocmd BufWritePost .vimrc source %
	autocmd BufWritePost ~/.dotfiles/.vim/plugins.vim source %
	autocmd BufWritePost ~/.dotfiles/.vim/mappings.vim source %
	autocmd BufWritePost ~/.dotfiles/.vim/commands.vim source %
	autocmd BufWritePost ~/.dotfiles/.vim/auto-commands.vim source %

	for file_path in split(globpath('~/.dotfiles/.vim/settings/', '*'), '\n')
		exec "autocmd BufWritePost " . file_path . " source %"
	endfor

augroup END

