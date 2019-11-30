"*************** MAPPINGS ***************"

" Quick edit vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Stop search highlights
nmap <Leader><space> :nohlsearch<cr>

" Working with grep
nmap [w :copen<cr>
nmap [q :cnext<cr>
nmap ]q :cprevious<cr>
nmap ]w :cclose<cr>

nmap <C-t> :TagbarToggle<CR>
