#vimconfig

##Liste des plugins

* [Pathogen](https://github.com/tpope/vim-pathogen)
* [Fuzzyfinder](https://bitbucket.org/ns9tks/vim-fuzzyfinder/ ) Utilisation de Ctags
* [L9](https://github.com/vim-scripts/L9) Functions Vim
* [Checksyntax_vim](https://github.com/tomtom/checksyntax_vim) Verfication syntax
* [Emmet-vim](https://github.com/mattn/emmet-vim) Zen Conding
* [NerdTree](https://github.com/scrooloose/nerdtree) Explorateurs de fichier
* [Tabular](https://github.com/godlygeek/tabular) Alignement auto de charactères
* [vim-powerline](https://github.com/Lokaltog/vim-powerline) Barre d'état enrichie
* [vim-startify](https://github.com/mhinz/vim-startify) Ecran de démarrage vim
* [feraltogglecommentify](http://www.vim.org/scripts/script.php?script_id=665) Commentaires
* [fugitive](https://github.com/tpope/vim-fugitive) Gestionnaire GIT
* [phpfolding](https://github.com/vim-scripts/phpfolding.vim) Plier et déplier les fonctions php
* [php_getset](http://www.vim.org/scripts/script.php?script_id=1707)  Getter Setter php
* [phpns](https://github.com/arnaud-lb/vim-php-namespace/blob/master/plugin/phpns.vim) Gestion de Namespace php
* [supertab](https://github.com/ervandew/supertab) Utilisation de la touche TAB pour l'autocompletion


##Liste des abbreviations

###Astria
`alog` Ajouter une log Astria_Log

###PHP

`pbf` Ajouter une instruction public function

`prf`  Ajouter une instruction proteced function

`$t`   Ajouter une instruction $this

`ss`  Ajouter une instruction self::


### PHPUnit
`_ae` Ajouter une instuction __$this->assertEquals__

`_aint` Ajouter une instuction __$this->assertInternaltype__

`_ains` Ajouter une instuction __$this->assertInstanceOf__

`_ac` Ajouter une instuction __$this->assertCount__

`_an` Ajouter une instuction __$this->assertNull__

`_at` Ajouter une instuction __$this->assertTrue__

`_af` Ajouter une instuction __$this->assertFalse__

### Correction
`functin` ` funcion` `functino` `function` `funciton` `functiton` `fucntion` `funtion` écrira __function__

`erturn` `retunr` `reutrn` `reutn` écrira __return__

`foreahc` `forech` écrira  __foreach__

##Raccourcis

### Mode Normal

####Onglets

`tn` Ouvre un nouvel onglet

`td` Ferme l'onglet courant

`tt` Ouvre un nouvel onglet à partir du chemin du fichier

`te` Ouvre un nouvel onglet avec l'explorateur de fichier

`tm (n)` Bouge l'onglet courant en position n

`th` Va au première onglet

`tl` Va au dernier onglet

`tr` ou  `CTRL + gauche`   Va à l'onglet de gauche *(CTRL + Gauche ne fonctionne pas avec putty)*

`ty` ou `CTRL droite`  Va à l'onglet de droite *(CTRL + Droite ne fonctionne pas avec putty)*

####Lignes

`ALT + Haut` Déplace la ligne vers le haut  *(Ne fonctionne pas avec putty)*

`ALT + Bas` Déplace la ligne vers le Bas  *(Ne fonctionne pas avec putty)*

`CTRL + Haut` Duplique la ligne vers le haut  *(Ne fonctionne pas avec putty)*

`CTRL + Bas` Duplique la ligne vers le Bas  *(Ne fonctionne pas avec putty)*

####Divers

`CTRL + S` Enregistre le fichier courant

`CTRL + K` Vide et Enregistre le fichier courant

####Plugin

`²` Affiche/Masque l'explorateur de fichier

`CTRL + F7` Indente le bloc courant

##### PHP

`--` Plie toutes les fonctions PHP

`++` Déplie toutes les fonctions PHP

`CTRL + A` Utilise les Ctags pour trouver un fichier

`CTRL + F5` Ajoute les getters/setters de la propriété sous le curseur

`CTRL + L` Lance PHPUnit sur le fichier courant

`7+` Lance PHPUnit sur un groupe

`8+` Lance PHPUnit sur test se trouvant sous la position actuel du curseur


##### ASTRIA

`1+` Lance les GPs

`2+` Ajoute un astria_log avec la variable sous le curseur


### Mode Insert

`CTRL + espace` aide syntaxique

##### Divers

`CTRL + S` Enregistre le fichier courant

`CTRL + Z` Annule la dernière modification
