if exists("g:loaded_vimux_django_test") || &cp
  finish
endif
let g:loaded_vimux_django_test = 1

if !exists("g:vimux_django_tests_cmd")
  let g:vimux_django_tests_cmd = "python manage.py test"
endif

" Run tests on current file
map <F7> :call VimuxRunCommand(vimux_django_tests_cmd . " " . expand("%f"))<CR>
map <S-F7> :call VimuxRunCommand(vimux_django_tests_cmd . " " . expand("%f") . ":" . tagbar#currenttag('%s', '', 'f'))<CR>
map <Esc>[31~ :call VimuxRunCommand(vimux_django_tests_cmd . " " . expand("%f") . ":" . tagbar#currenttag('%s', '', 'f'))<CR>
map <F8> :VimuxCloseRunner<CR>
