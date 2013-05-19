" jump_to_code.vim
" Maintainer:   James Conroy-Finn <http://jamesconroyfinn.com>
" Version:      0.1

if exists('g:loaded_jump_to_code') || &cp || v:version < 700
  finish
endif
let g:loaded_jump_to_code = 1

if !exists('g:jump_to_code_base')
  let g:jump_to_code_base = expand("~/Code")
endif

" Let's get started!

function! s:sub(str,pat,rep) abort
  return substitute(a:str,'\v\C'.a:pat,a:rep,'')
endfunction

function! s:DirComplete(A,L,P) abort
  let base = s:sub(g:jump_to_code_base, '^/', '')
  let directories = map(glob(fnameescape(base) . '/*/', 1, 1), 'fnamemodify(v:val, ":h:t")')
  return directories
endfunction

function! s:Cd(dir)
  let chdir = exists("*haslocaldir") && haslocaldir() ? "lchdir " : "chdir "
  exe chdir . join([g:jump_to_code_base, a:dir], '/')
endfunction

command! -buffer -bar -bang -nargs=1 -complete=customlist,s:DirComplete JumpToCode :execute s:Cd(<q-args>)

" vim:set sw=2 sts=2:
