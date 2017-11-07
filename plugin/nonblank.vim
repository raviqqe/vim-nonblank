if exists('g:nonblank_loaded') || &compatible
  finish
endif

let g:nonblank_loaded = 1

function! NonBlank() range abort
  let l:lastview = winsaveview()
  execute a:firstline . ',' . a:lastline . 's/\s\+$//e'
  execute a:firstline . ',' . a:lastline . 's/\(\n\r\?\)\+\%$//e'
  call winrestview(l:lastview)
endfunction

command! -range=% NonBlank <line1>,<line2>call NonBlank()

if get(g:, 'nonblank_auto_delete', 1)
  augroup nonblank
    autocmd!
    autocmd BufWritePre * NonBlank
  augroup END
endif
