if exists('g:loaded_syntastic_xml_arc_checker')
    finish
endif
let g:loaded_syntastic_xml_arc_checker = 1

runtime! syntax_checkers/python/*.vim

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'xml',
    \ 'name': 'arc',
    \ 'redirect': 'python/arc'})
