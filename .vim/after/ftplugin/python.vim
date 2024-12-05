let b:ale_fixers = [
            \'remove_trailing_lines',
            \'trim_whitespace',
            \'ruff_format',
            \'ruff',
            \]
let b:ale_linters = [
            \'cspell',
            \'ruff',
            \'mypy',
            \]
setlocal tw=79 ts=4 sw=4 et ai
setlocal smartindent
setlocal cinwords="if,elif,else,for,while,try,except,finally,def,class"
setlocal formatoptions="croql"
