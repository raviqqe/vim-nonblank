if exists('g:nonblank_loaded') || &compatible
  finish
endif

let g:nonblank_loaded = 1

function! NonBlank() range abort
  execute a:firstline . ',' . a:lastline . 's/\s\+$//e'
  execute a:firstline . ',' . a:lastline . 's/\(\n\r\?\)\+\%$//e'
endfunction

command! -range=% NonBlank
      \ let s:view = winsaveview() |
      \ <line1>,<line2>call NonBlank() |
      \ call winrestview(s:view)

if get(g:, 'nonblank_auto_delete', 1)
  augroup nonblank
    autocmd!
    autocmd BufWritePre * NonBlank
  augroup END
endif
