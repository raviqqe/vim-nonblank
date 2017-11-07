if exists('g:nonblank_loaded') || &compatible
  finish
endif

let g:nonblank_loaded = 1

command! NonBlank
      \ let lastview = winsaveview() |
      \ :%s/\s\+$//e |
      \ :%s/\(\n\r\?\)\+\%$//e |
      \ call winrestview(lastview)

augroup nonblank
  autocmd!
  autocmd BufWritePre * NonBlank
augroup END
