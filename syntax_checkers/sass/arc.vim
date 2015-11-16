if exists('g:loaded_syntastic_sass_arc_checker')
    finish
endif
let g:loaded_syntastic_sass_arc_checker = 1

runtime! syntax_checkers/python/*.vim

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'sass',
    \ 'name': 'arc',
    \ 'redirect': 'python/arc'})
