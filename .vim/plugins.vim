"*************** VUNDLE ***************"
 
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'ajh17/spacegray.vim'
Plugin 'rking/ag.vim'
Plugin 'tpope/vim-surround'
Plugin 'StanAngeloff/php.vim'
Plugin 'arnaud-lb/vim-php-namespace'
"Plugin 'ervandew/supertab'
Plugin 'stephpy/vim-php-cs-fixer'
Plugin 'tobyS/pdv'
Plugin 'tobyS/vmustache'
"Plugin 'SirVer/ultisnips'
Plugin 'lumiliet/vim-twig'
Plugin 'szw/vim-tags'
Plugin 'scrooloose/nerdcommenter'

" Snipmate reqs
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'majutsushi/tagbar'
Plugin 'sickill/vim-pasta'
" End snipmate

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
