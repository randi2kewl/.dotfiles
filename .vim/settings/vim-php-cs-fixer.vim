"*************** VIM-PHP-CS-FIXER SETTINGS ***************"

let g:php_cs_fixer_level = "psr2"


"*************** MAPPINGS ***************"

nnoremap <silent><leader>pf :call PhpCsFixerFixFile()<CR>


"*************** AUTO-COMMANDS ***************"

autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()
