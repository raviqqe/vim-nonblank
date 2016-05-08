if exists("g:non_blank_loaded") || &cp
  finish
endif
let g:non_blank_loaded = 1

command! DeleteBlanks let lastview = winsaveview() |
                    \ :%s/\s\+$//e |
                    \ :%s/\(\s*$\n\?\)\+\%$//e |
                    \ call winrestview(lastview)
autocmd BufWritePre * DeleteBlanks
