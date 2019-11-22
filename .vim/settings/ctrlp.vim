"*************** CTRLP PLUGIN SETTINGS ***************"

" Ignores for symfony projects
set wildignore+=*/app/cache/*,*/vendors/*,*/vendor/*

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'


"*************** MAPPINGS ***************"

nmap <c-R> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>


