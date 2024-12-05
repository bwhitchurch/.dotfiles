setl spell
setl ts=2 sw=2 sts=2 et
let b:ale_linters = ['alex', 'cspell', 'markdownlint', 'proselint', 'textlint', 'writegood', 'vale']
let b:ale_fixers = ['pandoc', 'prettier', 'textlint', 'remove_trailing_lines', 'trim_whitespace']
let b:ale_markdown_redpen_options = '-c $HOME/.config/redpen/conf/redpen-conf-en.xml'
