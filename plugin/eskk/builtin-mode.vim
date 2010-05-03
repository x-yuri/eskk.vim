" vim:foldmethod=marker:fen:
scriptencoding utf-8

" See 'plugin/eskk.vim' about the license.


runtime! plugin/eskk.vim

" Load Once {{{
if exists('g:loaded_eskk_builtin_mode') && g:loaded_eskk_builtin_mode
    finish
endif
let g:loaded_eskk_builtin_mode = 1
" }}}
" Saving 'cpoptions' {{{
let s:save_cpo = &cpo
set cpo&vim
" }}}

" Register builtin-modes. {{{

" 'ascii' mode {{{
if !exists('g:eskk_mode_ascii_no_default_mappings')
    let g:eskk_mode_ascii_no_default_mappings = 0
endif

if g:eskk_mode_ascii_no_default_mappings
    lmap <C-j> <Plug>(eskk:mode:ascii:to-hira)
endif

call eskk#register_mode('ascii')
" }}}

" 'hira' mode {{{
if !exists('g:eskk_mode_hira_no_default_mappings')
    let g:eskk_mode_hira_no_default_mappings = 0
endif

if g:eskk_mode_hira_no_default_mappings
    lmap q <Plug>(eskk:mode:hira:to-kata)
    lmap l <Plug>(eskk:mode:hira:to-ascii)
    lmap L <Plug>(eskk:mode:hira:to-zenei)
endif

call eskk#register_mode('hira')
" }}}

" }}}

" Restore 'cpoptions' {{{
let &cpo = s:save_cpo
" }}}
