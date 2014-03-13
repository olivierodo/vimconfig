"pathogen infection
execute pathogen#infect()

" Don't highlight search terms
"set nohlsearch

" My preferred autoindent features
filetype indent off
set autoindent
set nocindent

" Insert spaces when the tab key is hit
set expandtab

" Tab spacing of 4
set tabstop=4

set autoread

" Alternative syntax highlighting colours for a dark background
syntax on
colorscheme elflord
"set background=dark

set number

set smartindent
set shiftwidth=4
set cinkeys=0{,0},:,0#,!,!^F

set mousehide " Hide the mouse cursor while typing
scriptencoding utf-8
set history=1000 " Store a ton of history (default is 20)
"    set spell " Spell checking on
set hidden " Allow buffer switching without saving
set tabpagemax=15 " Only show 15 tabs
set showmode " Display the current mode
"set paste
set cursorline " Highlight current line
" Default Colors for CursorLine

" Change Color when entering Insert Mode
"autocmd InsertEnter * highlight  CursorLine ctermbg=red ctermfg=None


" COLORS --------------------
" Revert Color to default when leaving Insert Mode
"autocmd InsertEnter * highlight  CursorLine ctermbg=  ctermfg=None
"autocmd InsertLeave * highlight  CursorLine ctermbg=none ctermfg=None

hi TabLineFill ctermfg=Red ctermbg=DarkGreen
hi TabLine ctermfg=Black ctermbg=Red
hi TabLineSel ctermfg=Yellow ctermbg=Black


set showmatch " Show matching brackets/parenthesis
set incsearch " Find as you type search
set hlsearch " Highlight search terms
set winminheight=0 " Windows can be 0 line high
set ignorecase " Case insensitive search
set smartcase " Case sensitive when uc present
set wildmenu " Show list instead of just completing
set wildmode=list:longest,full " Command <Tab> completion, list matches, then longest common part, then all.
"set whichwrap=b,s,h,l,<,>,[,] " Backspace and cursor keys wrap too
set scrolljump=5 " Lines to scroll when cursor leaves screen
set scrolloff=3 " Minimum lines to keep above and below cursor
"set foldenable " Auto fold code
set list
set listchars=tab:›\ ,trail:•,extends:#,nbsp:. " Highlight problematic whitespace

set splitright
set splitbelow 
set fileformat=unix

set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set noshowmode
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
let g:Powerline_symbols = 'fancy'

"Longeur de la ligne
match ErrorMsg /\%>120v.\+/

" }
"
" " Formatting {
set nowrap " Wrap long lines
set pastetoggle=<F12>
"set shellcmdflag=-ic
"set softtabstop=4 " Let backspace delete indent
"set matchpairs+=<:> " Match, to be used with %
"  autocmd FileType c,cpp,java,go,php,javascript,python,twig,xml,yml autocmd BufWritePre <buffer> call StripTrailingWhitespace()
autocmd FileType go autocmd BufWritePre <buffer> Fmt
autocmd BufNewFile,BufRead *.html.twig set filetype=html.twi
autocmd BufWritePost .vimrc source %


" tabs
nnoremap th  :tabfirst<CR>
nnoremap ty  :tabnext<CR>
nnoremap tr  :tabprev<CR>
nnoremap tl  :tablast<CR>
nnoremap te  :Texplore<CR>
nnoremap tt  :tabedit<Space>
nnoremap tm  :tabm<Space>
nnoremap td  :tabclose<CR>
nnoremap tn :tabnew<CR>
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"lines
nnoremap <A-Up> :m .-2<CR>==
nnoremap <A-Down> :m .+1<CR>==
nnoremap <C-Down> :t .<CR>==
nnoremap <C-Up> :t .-2<CR>==

"plugins
nnoremap ²  :NERDTreeToggle<CR> <bar> :NERDTreeMirror<CR>
nnoremap <C-S> :w<CR>
nnoremap <C-F7> :Tabularize /=<CR>
nnoremap <C-A>  :FufTaggedFile<CR>

"php"
autocmd FileType php nnoremap <C-F5> <C-O>:InsertBothGetterSetter /=<CR>
autocmd FileType php noremap <C-L> :!pu %<CR>
autocmd FileType php nnoremap ++  :DisablePHPFolds<CR>
autocmd FileType php nnoremap --  :EnableFastPHPFolds<CR>
autocmd FileType * noremap <C-K> :call ClearFile()<CR>

"Insert Mode"
inoremap <C-S> <C-O>:w<CR>
inoremap <C-Z> <C-O>:undo<CR>
inoremap <C-F7> <C-O>:Tabularize /=<CR>
autocmd FileType php inoremap <Leader>e <C-O>:call PhpExpandClass()<CR>
autocmd FileType php inoremap <C-F5> <C-O>:InsertBothGetterSetter /=<CR>




"nnoremap <Esc>e  :!egrep -irn --exclude-dir=\".svn\"<Space>
"nnoremap <Esc>e  :!clear && echo -e "\033[32m" && echo "<cword>"  &&  echo -e "\033[0m" &&  egrep -irn --exclude-dir=".svn" "<cword>" .<CR>
"nnoremap <Esc>le  :!clear && echo -e "\033[32m" && echo "<cword>"  &&  echo -e "\033[0m" &&  egrep -irn --exclude-dir=".svn" "<cword>" /data/www/lcl/<CR>
"nnoremap <Esc>²   :!clear && echo -e "\033[32m" && echo "<cword>"  &&  echo -e "\033[0m" &&  fclass <cword><CR>
"PERSONAL FUNCTION"
autocmd FileType php nnoremap <F9>   :call GoToClass('tabedit')<CR>
autocmd FileType php nnoremap <F3>   :call GoToZendClass('tabedit')<CR>
autocmd FileType php nnoremap <F4>   :call GoToParentZendClass('tabedit')<CR>
autocmd FileType php nnoremap <F5>   :call GoToZendClass('e')<CR>
autocmd FileType php nnoremap <F6>   :call GoToZendClass('vsplit')<CR>
autocmd FileType php nnoremap <F7>   :call GoToZendClass('split')<CR>
autocmd FileType php nnoremap <F11>  :call SearchForMethodInLibrary()<CR> 
autocmd FileType php nnoremap <F12>  :call SearchForMethod()<CR> 
autocmd FileType php nnoremap 2+  :call Alog()<CR>
autocmd FileType php nnoremap 1+  :call Agp()<CR>


"Config plugins
let DisableAutoPHPFolding = 1
