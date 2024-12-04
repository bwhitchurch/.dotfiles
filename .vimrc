set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=~/.local/lib/python3.12/site-packages/powerline/bindings/vim/
call vundle#begin()
" " let Vundle manage Vundle, required
Plugin 'git@github.com:VundleVim/Vundle.vim'

"Plugin 'git@github.com:KSP-KOS/EditorTools',{'rtp': 'VIM/vim-kerboscript'}
"Plugin 'git@github.com:albfan/AnsiEsc.vim'
"Plugin 'git@github.com:andymass/vim-matlab'
"Plugin 'git@github.com:bfrg/vim-cpp-modern'
"Plugin 'git@github.com:chrisbra/NrrwRgn'
"Plugin 'git@github.com:effi/vim-OpenFoam-syntax'
"Plugin 'git@github.com:godlygeek/csapprox'
"Plugin 'git@github.com:google/vim-codefmt'
"Plugin 'git@github.com:jreybert/vimagit'
"Plugin 'git@github.com:kien/ctrlp.vim'
"Plugin 'git@github.com:lervag/vim-foam'
"Plugin 'git@github.com:lervag/vimtex'
"Plugin 'git@github.com:mboughaba/i3config.vim'
"Plugin 'git@github.com:rbong/vim-flog'
"Plugin 'git@github.com:sjl/badwolf'
"Plugin 'git@github.com:stevearc/vim-arduino'
"Plugin 'git@github.com:szymonmaszke/vimpyter'
Plugin 'git@github.com:pangloss/vim-javascript'
Plugin 'git@github.com:leafgarland/typescript-vim'
Plugin 'git@github.com:maxmellon/vim-jsx-pretty'
Plugin 'git@github.com:Xuyuanp/nerdtree-git-plugin'
Plugin 'git@github.com:chrisbra/unicode.vim'
Plugin 'git@github.com:dense-analysis/ale'
Plugin 'git@github.com:editorconfig/editorconfig-vim'
Plugin 'git@github.com:github/copilot.vim'
Plugin 'git@github.com:google/vim-glaive'
Plugin 'git@github.com:google/vim-maktaba'
Plugin 'git@github.com:jceb/vim-orgmode'
Plugin 'git@github.com:jeetsukumaran/vim-buffergator'
Plugin 'git@github.com:jiangmiao/auto-pairs'
Plugin 'git@github.com:l3nkz/ycmconf'
Plugin 'git@github.com:mattn/calendar-vim'
Plugin 'git@github.com:mhinz/vim-signify'
Plugin 'git@github.com:mhinz/vim-startify'
Plugin 'git@github.com:preservim/vim-markdown'
Plugin 'git@github.com:rust-lang/rust.vim'
Plugin 'git@github.com:scrooloose/nerdtree'
Plugin 'git@github.com:sheerun/vim-polyglot'
Plugin 'git@github.com:tmux-plugins/vim-tmux'
Plugin 'git@github.com:tmux-plugins/vim-tmux-focus-events'
Plugin 'git@github.com:tpope/vim-abolish'
Plugin 'git@github.com:tpope/vim-commentary'
Plugin 'git@github.com:tpope/vim-endwise'
Plugin 'git@github.com:tpope/vim-fugitive'
Plugin 'git@github.com:tpope/vim-repeat'
Plugin 'git@github.com:tpope/vim-speeddating'
Plugin 'git@github.com:tpope/vim-surround'
Plugin 'git@github.com:vim-latex/vim-latex'
Plugin 'git@github.com:vim-scripts/DoxygenToolkit.vim'
Plugin 'git@github.com:vim-scripts/SyntaxRange'
Plugin 'git@github.com:vim-scripts/systemrdl.vim'
Plugin 'git@github.com:vim-scripts/taglist.vim'
Plugin 'git@github.com:vim-scripts/utl.vim'
Plugin 'git@github.com:vim-scripts/yaml.vim'
Plugin 'git@github.com:xolox/vim-easytags'
Plugin 'git@github.com:xolox/vim-misc'
Plugin 'git@github.com:ycm-core/YouCompleteMe'
" All of your Plugins must be added before the following line
call vundle#end()            " required
call glaive#Install()

colorscheme badwolf
let colors_name = "badwolf"

packadd! matchit
function! Preserve(command)
    " Preparation: save last search, and cursor position.
    let _s = @/   
    let l = line(".")
    let c = col(".")
    " Do the business:
    execute a:command
    " Clean up: restore previous search history, and cursor position
    let @/ = _s
    call cursor(l, c)
endfunction

" Only do this part when compiled with support for autocommands.
if has("autocmd")
    " Use filetype detection and file-based automatic indenting.
    filetype plugin indent on
    " Use actual tab chars in Makefiles.
    autocmd FileType make set 
                \tabstop=8 
                \shiftwidth=8 
                \softtabstop=0 
                \noexpandtab
    " Quit if NERDTree is only window
    autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") 
                \&& b:NERDTree.isTabTree())|q|endif
endif
"Key Remaps
"NerdTree
nmap <silent> <leader>nt :NERDTreeToggle<CR>
"TagList
nmap <silent> <leader>tl :Tlist<CR>
nmap <silent> <leader>ta :TlistAddFilesRecursive %:p:h <CR>

nmap <silent> <leader>gs :vertical Git<CR>

nmap <silent> <leader>fi :YcmCompleter FixIt <CR>
nmap <silent> <leader>yd :YcmDiags <CR>

" Set options and local variables
" General
set textwidth=80
set laststatus=2
set spelllang=en
set spellfile=$HOME/.vim/spell/en.utf-8.add
set number
set tabstop=4 " Tabs are 4 spaces wide
set shiftwidth=4    " Indents will have a width of 4.
set softtabstop=4   " Sets the number of columns for a TAB.
set expandtab       " Expand TABs to spaces.
set showtabline=2
set autoread
set fo+=t
set fo-=l
set linebreak
set breakat=+-=,;:./?\(\)\{\}
set showbreak=>>>

"let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
syntax on
" Vim cpp enhanced
let g:cpp_class_scope_highlight=1
let g:cpp_member_variable_highlight=1
let g:cpp_class_decl_highlight=1
let g:cpp_posix_standard=1
let g:cpp_experimental_simple_template_highlight=1
let g:cpp_concepts_highlight=1
let g:cpp_attributes_highlight=1
let g:cpp_member_highlight=1
let g:c_syntax_for_h=1

" Doxygen Toolkit
let g:load_doxygen_syntax=1
let g:doxygen_enhanced_color=1
let g:doxgen_my_rendering=1
let g:DoxygenToolkit_startCommentTag = "/*!"
let g:DoxygenToolkit_startCommentBlock = "/*!"
let g:DoxygenToolkit_interCommentTag = "* "
let g:DoxygenToolkit_interCommentBlock = "* "
let g:DoxygenToolkit_endCommentTag = "*/"
let g:DoxygenToolkit_endCommentBlock = "*/"
let g:DoxygenToolkit_briefTag_className = "yes"
let g:DoxygenToolkit_briefTag_structName = "yes"
let g:DoxygenToolkit_briefTag_enumName = "yes"
let g:DoxygenToolkit_briefTag_namespaceName = "yes"
let g:DoxygenToolkit_briefTag_functionName = "yes"
let g:DoxygenToolkit_authorName = "Brandon M. Whitchurch"


let g:AutoPairsShortcutToggle=''
let g:AutoPairsShortcutJump=''
" TagList
let g:Tlist_Auto_Open=0
let g:Tlist_Use_Right_Window=1
let g:Tlist_WinWidth=35
let g:Tlist_GainFocus_On_ToggleOpen=1
let g:Tlist_Auto_Highlight_Tag=1
let g:Tlist_Exit_OnlyWindow=1
let g:Tlist_Process_File_Always=0
let g:Tlist_Inc_Winwidth=0
let g:Tlist_File_Fold_Auto_Close=1
let g:Tlist_Max_Tag_Length=10
let g:Tlist_Sort_Type="order"
let g:Tlist_Ctags_Cmd="ctags"
let tlist_matlab_settings = 'matlab;f:functions'
" NERDTree
let g:NERDTreeWinSize=25
"let g:foam256_use_custom_colors=0
"let g:Powerline_symbols='fancy'

let g:ale_fixers = [
            \   'remove_trailing_lines',
            \   'trim_whitespace',
            \]
let g:ale_cpp_flawfinder_minlevel=4
let g:ale_c_clangformat_style_option='file:/home/brandon/.clang-format'
let g:ale_c_clangformat_use_local_file=1
let g:ale_c_parse_makefile=1
let g:ale_c_parse_compile_commands=1
let g:ale_python_autopep8_options='--hang-closing'
let g:ale_python_flake8_options='--max-line-length=80'
let g:ale_python_black_options='--line-length=80'
let g:ale_fix_on_save=0
let g:ale_lint_delay=50
let g:ale_lint_on_text_changed='normal'
let g:ale_set_loclist=1
let g:ale_set_quickfix=1
let g:ale_set_highlights = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_info_str = 'I'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
nmap <silent> <c-n> :ALENextWrap <CR>
nmap <silent> <c-k> :ALEPreviousWrap <CR>
nnoremap <leader>af :ALEFix<CR>
"nmap <silent> <leader>gg :new <bar> :Glogg<CR>
let g:calendar_filetype='org'
let g:calendar_diary=$HOME.'/.diary'
let g:calendar_diary_extension='.org'
let g:calendar_monday=1
let g:csv_comment='#'

let g:org_indent=1
let g:org_prefer_insert_mode=0
let g:org_agenda_files=['/home/brandon/.diary/']
let g:load_doxygen_syntax=1
let g:doxygen_enhanced_color=1
let g:ascii_art = [
            \'                     ____________',
            \'                    /\  ________ \',
            \'                   /  \ \______/\ \',
            \'                  / /\ \ \  / /\ \ \',
            \'                 / / /\ \ \/ / /\ \ \',
            \'                / / /__\_\/ / /__\_\ \',
            \'               / /_/_______/ /________\',
            \'               \ \ \______ \ \______  /',
            \'                \ \ \  / /\ \ \  / / /',
            \'                 \ \ \/ / /\ \ \/ / /',
            \'                  \ \/ / /__\_\/ / /',
            \'                   \  / /______\/ /',
            \'                    \/___________/'
            \]
let g:startify_custom_header = 
            \ 'map(g:ascii_art + startify#fortune#boxed(), "\" \".v:val")'
set smarttab
set backspace=indent,eol,start 

"set csprg=gtags-cscope
"set cscopetag
"let g:Gtags_Auto_Update =0

let g:ycm_use_clangd = 1
let g:ycm_clangd_binary_path = '/home/brandon/.local/bin/clangd'
let g:ycm_clangd_args = [
            \'-j=2',
            \'-all-scopes-completion',
            \'-clang-tidy',
            \'-completion-style=bundled',
            \'-function-arg-placeholders',
            \'-header-insertion=iwyu',
            \'-header-insertion-decorators',
\]
let g:ycm_max_diagnostics_to_display = 0
map <leader>g  :YcmCompleter GoTo<CR>
map <leader>gc :YcmCompleter GoToCallers<CR>
map <leader>gd :YcmCompleter GoToDeclaration<CR>
map <leader>ge :YcmCompleter GoToCallees<CR>
map <leader>gf :YcmCompleter GoToDefinition<CR>
map <leader>gi :YcmCompleter GoToImplementation<CR>
map <leader>gr :YcmCompleter GoToReferences<CR>
map <leader>gt :YcmCompleter GoToType<CR>
let g:easytags_async = 1
let g:easytags_auto_highlight = 0
let g:easytags_auto_update = 0
let g:easytags_by_filetype = '~/.vim/tags'
let g:easytags_cmd = '/usr/bin/etags'
let g:easytags_events = ['BufWritePost']
let g:easytags_include_members = 1
let g:easytags_opts = ['--output-format=e-ctags']
let g:easytags_suppress_ctags_warning = 1
let g:easytags_syntax_keyword = 'always'
let g:vim_markdown_follow_anchor = 1

let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
"let g:ale_lint_on_insert_leave = 0
"let g:ale_fix_on_save = 0
"let g:ale_lint_on_save = 0
"set exrc
set mouse=a
" vim -b : edit binary using xxd-format!
let g:xxd_bytes = 32
augroup Binary
  autocmd!
  autocmd BufReadPre  *.bin set binary
  autocmd BufReadPost *.bin
    \ if &binary
    \ |   execute "silent %!xxd -c " . g:xxd_bytes
    \ |   set filetype=xxd
    \ |   redraw
    \ | endif
  autocmd BufWritePre *.bin
    \ if &binary
    \ |   let s:view = winsaveview()
    \ |   execute "silent %!xxd -r -c " . g:xxd_bytes
    \ | endif
  autocmd BufWritePost *.bin
    \ if &binary
    \ |   execute "silent %!xxd -c " . g:xxd_bytes
    \ |   set nomodified
    \ |   call winrestview(s:view)
    \ |   redraw
    \ | endif
augroup END

let g:copilot_filetypes =  {
            \ 'markdown': v:true,
            \ }
imap <silent><script><expr> <C-R> copilot#Accept("\<CR>")
let g:copilot_no_tab_map = v:true
