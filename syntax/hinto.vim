" Vim syntax file
" Language: Hinton
" Maintainer: rolEYder
" Revision: 04/29/2021


if exists("b:current_syntax")
	finish
endinf
let b_current_syntax = "hinton"

syn hintonKeyword func const 

hi def link hintonKeyword Keyword
