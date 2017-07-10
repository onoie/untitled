" =============================================================================
" Filename: autoload/migawari
" Author: onoie <onoie3@gmail.com>
" License: MIT License
" Last Change: 2017/07/01 00:00:00.
" =============================================================================

if exists('g:loaded_migawari')
    finish
endif
let g:loaded_migawari = 1

let s:save_cpo = &cpo
set cpo&vim

nmap z :call migawari#helloworld()<CR>

let &cpo = s:save_cpo
unlet s:save_cpo

"function! s:ToggleDone(line)
"  if a:line =~ '^"*\s*\[D\]'
"    call setline('.', substitute(a:line, '\[D\]<.*>', '[ ]', ''))
"  else
"    call setline('.', substitute(a:line, '\[ \]', '[D]<'.strftime("%Y/%m/%d %H:%M").'>', ''))
"  endif
"endfunction
