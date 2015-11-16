if exists('g:loaded_syntastic_javascript_arc_checker')
    finish
endif
let g:loaded_syntastic_javascript_arc_checker = 1

runtime! syntax_checkers/python/*.vim

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'javascript',
    \ 'name': 'arc',
    \ 'redirect': 'python/arc'})
