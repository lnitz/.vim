" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:


vmap cm :s:^:%:<CR><ESC><ESC>
vmap mm :s:^%::<CR><ESC><ESC>


let g:tex_flavor='latex'
let g:Tex_ExecuteUNIXViewerInForeground = 0
"let g:Tex_ViewRule_dvi = 'xdvi'
"let g:Tex_ViewRule_ps = 'xdvi'
"let g:Tex_ViewRule_pdf = 'evince'
"
if has('mac')
    let g:Tex_ViewRule_ps = 'open -a Preview'
    let g:Tex_ViewRule_pdf = 'open -a Preview'
    let g:Tex_ViewRule_dvi = 'open -a Preview'
elseif has('unix')
    let g:Tex_ViewRule_ps = 'okular'
    let g:Tex_ViewRule_pdf = 'okular'
    let g:Tex_ViewRule_dvi = 'okular'
endif

let g:Tex_GotoError = 0
let g:Tex_IgnoreLevel = 3
nnoremap <leader>lc <C-w><C-z>:ccl<CR> 
