" Vim syntax file
" Language:	BASIC
" Maintainer:	Allan Kelly <allan@fruitloaf.co.uk>
" Last Change:	Tue Sep 14 14:24:23 BST 1999

" First version based on Micro$soft QBASIC circa 1989, as documented in
" 'Learn BASIC Now' by Halvorson&Rygmyr. Microsoft Press 1989.
" This syntax file not a complete implementation yet.  Send suggestions to the
" maintainer.

" For version 5.x: Clear all syntax items
" For version 6.x: Quit when a syntax file was already loaded
if exists("b:current_syntax")
  finish
endif

syn keyword bmaxStatement   print drawtext

syn keyword bmaxTodo contained	TODO

syn region  bmaxComment	start="Rem" end="EndRem" contains=bmaxTodo
syn region  bmaxComment	start="^[ \t]*'" end="$" contains=bmaxTodo

if version >= 508 || !exists("did_bmax_syntax_inits")
  if version < 508
    let did_basic_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif

  "HiLink basicLabel		Label
  "HiLink basicConditional	Conditional
  "HiLink basicRepeat		Repeat
  "HiLink basicLineNumber	Comment
  "HiLink basicNumber		Number
  "HiLink basicError		Error
  HiLink basicStatement	Statement
  "HiLink basicString		String
  HiLink basicComment		Comment
  "HiLink basicSpecial		Special
  HiLink basicTodo		Todo
  "HiLink basicFunction		Identifier
  "HiLink basicTypeSpecifier Type
  "HiLink basicFilenumber basicTypeSpecifier
  "hi basicMathsOperator term=bold cterm=bold gui=bold

  delcommand HiLink
endif

let b:current_syntax = "bmax"
