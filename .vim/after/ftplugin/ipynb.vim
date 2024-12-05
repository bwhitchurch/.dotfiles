nmap <silent><leader>pb :VimpyterInsertPythonBlock<CR>
nmap <silent><leader>jp :VimpyterStartJupyter<CR>
nmap <silent><leader>jt :execute '!jupyter trust ' . b:original_file<CR>
