if exists("g:hinton_loaded")
   finish
endif
let g:hinton_loaded = 1
			
function! s:fmt_autosave()
	if get(g:, "hinton_fmt_autosave", 1)
		call hinton#fmt#Format()
	endif
endfunction

augroup vim-hinton
	autocmd!
	autocmd BufWritePre *.ht call s:fmt_autosave()
augroup end

" vim: sw=2 ts=2 et
