let b:ale_linters = [
            \'cppcheck',
            \'clangtidy',
            \]
let b:ale_fixers = g:ale_fixers + [
            \ 'clang-format',
            \]
let b:ale_cpp_cppcheck_options = '--inline-suppr --enable=style'
let b:ale_cpp_clangtidy_extra_options = '--extra-arg=-Wno-unknown-warning-option'
let g:ycm_always_populate_location_list = 1

function Header(total_width, word)
    let l:pos = getcurpos()
    let l:indent_level = l:pos[2]-1
    echom "Header::l:indent_level = " . l:indent_level
    let l:indented_width = a:total_width - 2*l:indent_level
    let l:top_bottom_fill_char = '*'
    let l:left_right_fill_char = ' '
    let l:top_bottom_line_end_char = '/'
    let l:inserted_word = ' ' . a:word . ' '
    let l:word_width = strlen(l:inserted_word)
    let l:length_before = ((l:indented_width - l:word_width) / 2) - 2
    let l:fills_before = repeat(' ',l:indent_level+1) . l:top_bottom_fill_char . repeat(left_right_fill_char , l:length_before) 
    let l:length_after = ((l:indented_width - l:length_before - l:word_width)-4)
    let l:fills_after = repeat(left_right_fill_char, l:length_after) . l:top_bottom_fill_char 
    let l:top_line = repeat(' ',l:indent_level) . l:top_bottom_line_end_char . repeat(l:top_bottom_fill_char,l:indented_width-2)
    let l:bottom_line = repeat(' ',l:indent_level+1) . repeat(l:top_bottom_fill_char, l:indented_width - 2) . l:top_bottom_line_end_char
    let l:mid_line = l:fills_before . l:inserted_word . l:fills_after

    :put =l:top_line
    :put =l:mid_line
    :put =l:bottom_line
endfunction
nnoremap <Leader>cb ^"ayg_:call Header(80, @a)<CR>3kdd
