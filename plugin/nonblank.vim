if exists('g:nonblank_loaded') || &compatible
  finish
endif

let g:nonblank_loaded = 1

command! NonBlank
      \ let s:view = winsaveview() |
      \ %s/\s\+$//e |
      \ %s/\(\n\r\?\)\+\%$//e |
      \ call winrestview(s:view)

if get(g:, 'nonblank_auto_delete', 1)
  augroup nonblank
    autocmd!
    autocmd BufWritePre * NonBlank
  augroup END
endif
