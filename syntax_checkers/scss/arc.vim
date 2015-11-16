if exists('g:loaded_syntastic_scss_arc_checker')
    finish
endif
let g:loaded_syntastic_scss_arc_checker = 1

runtime! syntax_checkers/python/*.vim

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'scss',
    \ 'name': 'arc',
    \ 'redirect': 'python/arc'})
