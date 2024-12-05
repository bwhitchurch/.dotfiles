function! Synctex()
  execute "silent !zathura --synctex-forward " . line('.') . ":" . col('.') . ":" . bufname('%') . " %:r.pdf&"
  redraw!
endfunction
nnoremap <F9> :call Synctex()<CR>

filetype indent on
let g:tex_flavor='latex'

let g:Tex_AdvancedMath = 1
"let g:Tex_IgnoredWarnings=
"            \"Underfull\n".
"            \"Overfull\n".
"            \"specifier changed to\n".
"            \"You have requested\n".
"            \"Missing number, treated as zero.\n".
"            \"There were undefined references\n".
"            \"Citation %.%# undefined\n".
"            \"Size substitutions\n"

"let g:Tex_IgnoreLevel=8
"let g:Tex_UseMakefile=1

let g:Tex_GotoError=0
let g:Tex_AdvancedMath=1

"inoremap <C-f> <Esc>: silent exec '.!inkscape-figures create "'.getline('.').'" "'.b:latex_root.'/figures/"'<CR><CR>:w<CR>
"nnoremap <C-f> : silent exec '!inkscape-figures edit "'.b:latex_root.'/figures/" > /dev/null 2>&1 &'<CR><CR>:redraw!<CR>

set winaltkeys=no

" Compilation rules
let g:Tex_MultipleCompileFormats='pdf'
let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_CompileRule_pdf = "latexmk -pdflatex='pdflatex -file-line-error -synctex=1 -interaction=nonstopmode' -bibtex -pdf $*"
