source ~/.vim/after/syntax/ifdef.vim



" fold #if...#else...#endif constructs
syn region IfFoldContainer
      \ start="^\s*#\s*if\(n\?def\)\?\>"
      \ end="#\s*endif\>"
      \ skip=+"\%(\\"\|[^"]\)\{-}\\\@<!"\|'[^']\{-}'\|'\\''\|//.*+
      \ transparent
      \ keepend extend
      \ containedin=NONE
      \ contains=SynFoldIf,SynFoldElif,SynFoldElse
syn region SynFoldIf
      \ start="^\s*#\s*if\(n\?def\)\?\>"
      \ end="^\s*#\s*el\(se\|if\)\>"ms=s-1,me=s-1
      \ skip=+"\%(\\"\|[^"]\)\{-}\\\@<!"\|'[^']\{-}'\|'\\''\|//.*+
      \ fold transparent
      \ keepend
      \ contained
      \ nextgroup=SynFoldElif,SynFoldElse
      \ contains=TOP
syn region SynFoldElif
      \ start="^\s*#\s*elif\>"
      \ end="^\s*#\s*el\(se\|if\)\>"ms=s-1,me=s-1
      \ skip=+"\%(\\"\|[^"]\)\{-}\\\@<!"\|'[^']\{-}'\|'\\''\|//.*+
      \ fold transparent
      \ keepend
      \ contained
      \ nextgroup=SynFoldElse
      \ contains=TOP
syn region SynFoldElse
      \ start="^\s*#\s*else\>"
      \ end="^\s*#\s*endif\>"
      \ skip=+"\%(\\"\|[^"]\)\{-}\\\@<!"\|'[^']\{-}'\|'\\''\|//.*+
      \ fold transparent
      \ keepend
      \ contained
      \ contains=TOP



"set foldmethod=syntax
"normal zM
"g/XNAV/normal zo



