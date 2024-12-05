let b:ale_linters = [ 'bashate', 'cspell', 'language_server', 'shell', 'shellcheck' ]
let b:ale_fixers = [ 'remove_trailing_lines', 'trim_whitespace', 'shfmt' ]

let g:ale_sh_shfmt_options = '-i 4 -ci -sr -kp -s'
setlocal sw=4 sts=4 ts=4 expandtab
