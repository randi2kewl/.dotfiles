set nocompatible              " be iMproved, required
":filetype plugin on

let mapleader = ','

so ~/.dotfiles/.vim/plugins.vim
so ~/.dotfiles/.vim/commands.vim
so ~/.dotfiles/.vim/mappings.vim
so ~/.dotfiles/.vim/auto-commands.vim


"*************** LOOP PLUGIN SETTINGS ***************"

for file_path in split(globpath('~/.dotfiles/.vim/settings/', '*'), '\n')
	exec "source " . file_path
endfor
