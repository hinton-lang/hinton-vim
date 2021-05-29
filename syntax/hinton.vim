" Vim syntax file
" Language: Hinton
" Maintainer: rolEYder
" Lastest Revision:  04/23/2021

if exists("b:current_syntax")
	finish
endif



syntax keyword hintonKeyword if elsif else let const var false
syntax keyword hintonKeyword class return true false break null in continue async await yield sync try on catch finally throw
syntax keyword hintonFunction func print while for


syntax region  hintonBlock start="{" end="}" transparent fold

syntax match hintonComment "/\\*\\*/"
highlight link hintonComment Comment

"" Numbers
syntax match hintonBinNumer display "\v<0b[01]%(_?[01])*"



"" Operators
syntax match hintonOperator "\V\[-+/*=^&?|!><%~]"
syntax match hintonOperator "\v\*"
syntax match hintonOperator "\v/*"
syntax match hintonOperator "\v\+"
syntax match hintonOperator "\v\-"
syntax match hintonOperator "\v\?*"
syntax match hintonOperator "\v\*\="
syntax match hintonOperator "\v\+\="
syntax match hintonOperator "\v-\="
syntax match hintonOperator "\v\=\="
syntax match hintonOperator "\v\:\="
syntax match hintoOperator "\v\<"
syntax match hintonOperator "\v\>"
syntax match hintonOperator "\v\="
syntax match hintonOperator "\v\<\="

"" Strings
syntax region hintonString start=/\v"/ skip=/\v\\./ end=/\v"/
highlight link hintonString String

highlight link hintonKeyword Keyword
highlight link hintonFunction Function
highlight link hintonOperator Operator
highlight link hintonBinNumber Number
highlight link hintonEntityFunction Function


let b:current_sytax = "hinton"

