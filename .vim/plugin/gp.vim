:let g:GPNumber = ""
:function! Agp()
:
:   if (!exists ("g:GPNumber" ))
:     let g:GPNumber=""
:   endif
:
:   if "" !=  g:GPNumber
:      let confirmVal    = confirm("Lancer le GP numéro [".g:GPNumber."] ?", "&Oui\n&Non", 1)
:      if (confirmVal == 2)
:         let g:GPNumber = ""
:      endif
:   endif
:
:   if "" ==  g:GPNumber
:      let b:result = inputdialog("Quel GP souhaitez-vous lancer ? ")
:      if b:result == ""
:        echoerr  "Lancement annulé"
:        return
:      endif
:      let g:GPNumber = b:result
:   endif
:   echom "GP ".g:GPNumber." en cours d'execution"
:   let gpresult = system( "ag " . g:GPNumber )
:   let result   =  split(gpresult, "\n")
:   let c  = 0
:   let output    = []
:        if len(result) >= 1
:            while c < len(result)
:                let str =  strpart(result[c], -1, 4)
:                if ( str == 'Tot' || str == 'BUI' || str == 'Tes' || str == 'Exc')
:                    call add(output, result[c])
:                endif
:                let c +=1
:            endwhile
:       endif
:   cexpr output
:   caddexpr ""
:   cwindow
":   call AgpLog()
:endfunction

:function! AgpLog()
:    if filereadable("data/logs/greenpepper.log")
:        silent execute "tab drop data/logs/greenpepper.log"
:        echo "le fichier existe"
:    else
:       echo "le fichier n'existe pas"
:    endif
:endfunction

