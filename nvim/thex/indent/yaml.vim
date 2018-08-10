if exists("b:did_indent")
  finish
endif
let b:did_indent = 1

setlocal indentexpr=indent(v:lnum)
setlocal indentkeys=!^F,o,O,0#,0},0],<:>,-,*<Return>
