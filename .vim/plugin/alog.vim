" Function permettant d'ajouter un commantaire à partir d'un mot sur les
" projets zf
:function! Alog()
: let line    = line('.')
: let curline = getline('.')
: let word    = expand("<cword>")
: if 'return' == word
:    let result = substitute(curline, "return", "$retuner = ", "")
:    call append(line - 1, result)
:    
:    let where = line
:    let word  = 'returner'
: else
:    let where = line
: endif
: call append(where, 'Astria_Log::log(var_export($'.word. ',true));')
:endfunction
