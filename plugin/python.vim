if exists("g:loaded_vimux_django_test") || &cp
  finish
endif
let g:loaded_vimux_django_test = 1

" Run tests on current file
map <F7> :call VimuxRunCommand("m test --settings=settings.circle " . expand("%f"))<CR>
map <S-F7> :call VimuxRunCommand("m test --settings=settings.circle " . expand("%f") . ":" . tagbar#currenttag('%s', '', 'f'))<CR>
map <Esc>[31~ :call VimuxRunCommand("m test --settings=settings.circle " . expand("%f") . ":" . tagbar#currenttag('%s', '', 'f'))<CR>
map <F8> :VimuxCloseRunner<CR>
