set textwidth=80
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

let b:ale_fixers=['cmakeformat'] + g:ale_fixers
let b:ale_linters=['cmake_lint']

let g:ale_cmake_cmakeformat_executable='cmake-format'
let g:ale_cmake_cmakeformat_options=''
