if exists('g:loaded_syntastic_json_arc_checker')
    finish
endif
let g:loaded_syntastic_json_arc_checker = 1

runtime! syntax_checkers/python/*.vim

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'json',
    \ 'name': 'arc',
    \ 'redirect': 'python/arc'})
