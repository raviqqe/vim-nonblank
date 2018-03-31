if exists('g:nonblank_loaded') || &compatible
  finish
endif

let g:nonblank_loaded = 1

if !exists('g:nonblank_blacklist')
  let g:nonblank_blacklist = ['diff', 'gitcommit']
endif

command! NonBlank
      \ if index(g:nonblank_blacklist, &ft) < 0 |
      \ let s:view = winsaveview() |
      \ %s/\s\+$//e |
      \ %s/\(\n\r\?\)\+\%$//e |
      \ call winrestview(s:view)

if get(g:, 'nonblank_enabled', 1)
  augroup nonblank
    autocmd!
    autocmd BufWritePre * NonBlank
  augroup END
endif
