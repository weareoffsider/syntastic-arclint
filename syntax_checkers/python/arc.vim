if exists("g:loaded_syntastic_python_arc_checker")
    finish
endif
let g:loaded_syntastic_python_arc_checker=1

function! SyntaxCheckers_python_arc_GetLocList() dict
    let makeprg = self.makeprgBuild({
        \ 'args': 'lint --output compiler --severity warning --lintall' })
    let errorformat = '%f:%l:%m'

    let errors = SyntasticMake({
        \ 'makeprg': makeprg,
        \ 'errorformat': errorformat })
    for error in errors
        let error.bufnr = bufnr('')
    endfor
    return errors
endfunction

call g:SyntasticRegistry.CreateAndRegisterChecker({
    \ 'filetype': 'python',
    \ 'name': 'arc' })
