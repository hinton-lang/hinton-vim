" Vim syntax file
" Language: Hinton
" Maintainer: rolEYder
" Lastest Revision:  04/23/2021

if exists("b:current_syntax")
	finish
endinf

let s:cpo_save = &cpo
set cpo&vim

let s:hinton_syntax_keywords = {
	\ 'hintonBoolean': ["true"
	\,				"false"]
	\, 'hintonKeyword': ["func"
	\, 					"const"]
}


function! s:syntax_keyword(dict)
	for key in keys(a:dict)
		execute 'syntax keyword' key join(a:dict[key], '')
	endfor
endfunction


call s:syntax_keyword(s:hinton_syntax_keywods)

syntax match hintonType "\v[iu][1-9]\d"
syntax match hintonOperator display "\v\[-+/*=^&?|!><%~]"


highlight default link hintonKeyword Keyword
