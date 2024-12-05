let b:ale_linters = [
            \'clangcheck', 
            \'clangtidy',
            \]
let b:ale_fixers = g:ale_fixers + [
            \ 'clang-format',
            \ 'uncrustify',
            \]
