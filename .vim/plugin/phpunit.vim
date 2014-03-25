:let g:PUNumber = ""
:function! PuGroup()
:
:   if (!exists ("g:PUNumber" ))
:     let g:PUNumber=""
:   endif
:
:   if "" !=  g:PUNumber
:      let confirmVal    = confirm("Lancer le groupe de tests nommé [".g:PUNumber."] ?", "&Oui\n&Non", 1)
:      if (confirmVal == 2)
:         let g:PUNumber = ""
:      endif
:   endif
:
:   if "" ==  g:PUNumber
:      let b:result = inputdialog("Quel groupe de tests souhaitez-vous lancer ? ")
:      if b:result == ""
:        echoerr  "Lancement annulé"
:        return
:      endif
:      let g:PUNumber = b:result
:   endif
:   echo "Lancement du groupe de test : ".g:PUNumber
:   call CallPuGroupFunction(g:PUNumber)
:endfunction

:function! AddPuGroup()
:    let bkLine       = line('.')
:    let curLine      = line('.')
:    let functionLine = 0
:    while functionLine == 0
:       let contentLine = getline(curLine)
:       if ("" != matchstr(contentLine, "function test",1) || curLine == 1)
:         let functionLine  = curLine
:       else
:          let curLine = curLine - 1
:       endif
:    endwhile
:
:    if curLine != 0 && curLine != 1
:       let destinationLine = curLine - 1
:       let groupName = "temporyGroupName"
:       let mymarker = "@group ".groupName
:       if "" != matchstr(getline(destinationLine), '*/')
:           let destinationLine = destinationLine - 1
:           let mymarker = "* ".mymarker
:       else
:           let mymarker = "/** ".mymarker." */"
:       endif
:       call append(destinationLine, mymarker)
:       silent execute "w"
:       call CallPuGroupFunction(groupName)
:       execute (destinationLine+1)."d"
:       silent execute "w"
:       execute "normal! ".bkLine."G"
:    endif
:endfunction

:function! CallPuGroupFunction(groupName)
:   execute "!pu --group ".a:groupName." %"
:endfunction
