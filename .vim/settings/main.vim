"*************** MAIN SETTINGS ***************"

syntax on

set tabstop=8
set shiftwidth=4
set softtabstop=4
set expandtab
set backspace=indent,eol,start
set number
set autowriteall
set textwidth=120
set colorcolumn=+1

" Highlight matches
set hlsearch

" Shows matches as you type
set incsearch

" Ignore case for searches 
set ignorecase

" Override ignorecase if capital is used
set smartcase


"*************** COLOR SCHEME ***************"

colorscheme spacegray
let g:spacegray_use_italics = 1
let g:spacegray_low_contrast = 0

hi vertsplit ctermfg=darkgrey ctermbg=bg
highlight LineNr ctermfg=darkgrey ctermbg=bg
set t_Co=256

let g:airline_theme='solarized'


"*************** NETRW ***************"

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
"let g:netrw_altv = 1
let g:netrw_winsize = 25

"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END
