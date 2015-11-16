if exists('g:loaded_syntastic_c_arc_checker')
    finish
endif
let g:loaded_syntastic_c_arc_checker = 1

runtime! syntax_checkers/python/*.vim

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'c',
    \ 'name': 'arc',
    \ 'redirect': 'python/arc'})
