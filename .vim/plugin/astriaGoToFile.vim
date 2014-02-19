:function! GoToClass(cmdForNewFile)
: let match = searchpos('Astria', 'b')
: echo match
:
:
:endfunction
:
:function! GoToZendClass(cmdForNewFile)
:  let filepath = system("fclass " . expand("<cword>"))
:  echom filepath
:  if filepath == ""
:      echom "La classe " .  expand("<cword>") . " n'a pas été trouvé"
:  else
:      execute a:cmdForNewFile . " " .  filepath
:  endif
:endfunction

:function! GoToParentZendClass(cmdForNewFile)
: try
:   execute "normal! gg/extends\<cr>"
: catch
:   return
: endtry
: execute "normal! w"
: call GoToZendClass(a:cmdForNewFile)
:endfunction

:function! SearchForMethod()
:  let word =  expand("<cword>")
:  echom "Recherche de la methode : " . word 
:  let grep = system("grep -inr --exclude-dir=\".svn\" \"function " .  word . "(\" library")
:  let result =  split(grep, "\n")
:  if len(result) == 0
:   echom "la methode ".word." n'a pas été trouvé"
:   let confirmEnd = confirm("Voulez-vous lancer une recherche dans les librairies ?", "&Oui\n&Non", 2)
:   if(confirmEnd == 1)
:       call SearchForMethodInLibrary()
:       return
:   endif
:  endif
:  let choice = ""
:  if len(result) > 1
:      let c  = 0
:      while c < len(result)
:          let str =  split(result[c], ":")
:          echo "[" . c  . "] " . str[0]
:          let c +=1
:      endwhile
:      echo "[+] Voulez-vous lancer une recherche dans les librairies ?"
:      let ChoiceNum = input("Choix: ")
:      let ChoiceNum = Strip(ChoiceNum)
:      if ChoiceNum == '+'
:          call SearchForMethodInLibrary()
:          return
:      endif
:      let choice    = get(result,str2nr(ChoiceNum))
:  elseif len(result) == 1
:      let choice = result[0]
:  endif
:  if choice == ""
:     echom "Le choix ne correspond pas... NOOB !!"
:  else
:      let choiceTab = split(choice, ":")
:
:      let file = choiceTab[0]
:      let line = choiceTab[1]
:  
:      silent execute "tabedit " . file
:      execute "normal! " . line . "G"
:  endif
:
:endfunction

:function! SearchForMethodInLibrary()
: let workspace = $WORKSPACE
: let libFile = './.aSettings/library_path'
: let word =  expand("<cword>")
: if filereadable(libFile)
:     let fileContent = readfile(libFile)
:     let choiceTab   = []
:     let c  = 0
:     for s in fileContent
:         if s == ""
:             continue
:         endif
:        let grep = system("grep -inr --exclude-dir=\".svn\" \"function " .  word . "(\" " . workspace . s)
:        let result =  split(grep, "\n")
:        if len(result) >= 1
:            while c < len(result)
:                let str =  split(result[c], ":")
:                echo "[" . c  . "] " . str[0]
:                call add(choiceTab, result[c])
:                let c +=1
:            endwhile
:       endif
:     endfor
:     if len(choiceTab) > 1
:         let ChoiceNum = input("Choix: ")
:         let ChoiceNum = Strip(ChoiceNum)
:         let choice    = get(choiceTab,str2nr(ChoiceNum))
:     elseif len(choiceTab) == 1
:         let choice = choiceTab[0]
:     end
:
:     let choiceTab = split(choice, ":")
:
:     let file = choiceTab[0]
:     let line = choiceTab[1]
:  
:     silent execute "tabedit " . file
:     execute "normal! " . line . "G"
: else 
:     echo "Les astria Settings n'existe pas dans le projet (".libFile.")"
: endif
:endfunction


:function! ClearFile()
:    execute "normal! gg"
:    execute "normal! dG"
:    silent execute "w"
:endfunction

:function! Strip(input_string)
:    return substitute(a:input_string, '^\s*\(.\{-}\)\s*$', '\1', '')
:endfunction


:function! AstriaInit()
: let project  = resolve(expand('<sfile>:p:h'))
: let libFile   = project. '/.aSettings/vimrc'
: if filereadable(libFile)
: let vimrcContent = readfile(libFile)
:     for cmd in vimrcContent
:        silent execute cmd
:     endfor
: endif
:endfunction

:call AstriaInit()
