:let b:GPNumber = ""
:function! Agp()
:
:   if (!exists ("b:GPNumber" ))
:     let b:GPNumber=""
:   endif
:
:   if "" !=  b:GPNumber
:      let confirmVal    = confirm("Lancer le GP numéro [".b:GPNumber."] ?", "&Oui\n&Non", 1)
:      if confirmVal == 'N'
:         let b:GPNumber = ""
:      endif
:   endif
:
:   if "" ==  b:GPNumber
:      let result = inputdialog("Quel GP souhaitez-vous lancer ? ")
:      if result == ""
:        echoerr  "Lancement annulé"
:        return
:      endif
:      let b:GPNumber = result
:   endif
":   execute '!ag ' . b:GPNumber
:   echom "GP en cours d'execution"
:   let gpresult = system( "ag " . b:GPNumber )
:   let result   =  split(gpresult, "\n")
:   let c  = 0
:   let output    = []
:        if len(result) >= 1
:            while c < len(result)
:                let str =  strpart(result[c], -1, 4)
:                if ( str == ' To' || str == 'BU' || str == 'Te')
:                    call add(output, r)
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

