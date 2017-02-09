" Vim syntax file
" Language: RS274/NGC
" Original Creator: Gary Fixler <gfixler.emc@gmail.com>
" Modifications: Greg Jurman <jurman.greg@gmail.com>
" Last Change: 2014 Apr 15

if exists("b:current_syntax")
    finish
endif

syn case ignore

syntax keyword gcodeTodo TODO FIXME XXX contained
syntax match gcodeComment /\v;.*$/ contains=gcodeTodo
syntax keyword gcodeDeprecatedCodes G0 M107 contained
syntax match gcodeGCodes /\v\s*(g[0-9][0-9]*)/ contains=gcodeDeprecatedCodes
syntax match gcodeMCodes /\v\s*(m[0-9][0-9]*)/ contains=gcodeDeprecatedCodes
syntax match gcodeNumber /\v\s*(-?[0-9]*\.?[0-9]*)/ contained
syntax match gcodeSetting /\v\s*([abcxuiyvjzwkfes]-?[0-9]*\.?[0-9]*)/ contains=gcodeNumber
syntax match gcodeString /\v\s(.*)/ contained
syntax match gcodeDisplay /\vM117.*/ contains=gcodeString

highlight link gcodeTodo Todo
highlight link gcodeComment Comment
highlight link gcodeNumber Number
highlight link gcodeSetting Function
highlight link gcodeGCodes Keyword
highlight link gcodeMCodes Keyword
highlight link gcodeDeprecatedCodes Error
highlight link gcodeString String
highlight link gcodeDisplay Keyword

let b:current_syntax = "gcode"
