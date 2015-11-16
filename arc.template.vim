if exists('g:loaded_syntastic_<%= lang %>_arc_checker')
    finish
endif
let g:loaded_syntastic_<%= lang %>_arc_checker = 1

runtime! syntax_checkers/<%= root_lang %>/*.vim

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': '<%= lang %>',
    \ 'name': 'arc',
    \ 'redirect': '<%= root_lang %>/arc'})
