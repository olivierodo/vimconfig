if filereadable(expand("~/.vimrc.plugins"))
  source ~/.vimrc.plugins
endif

autocmd BufWritePost .vimrc source % " -> auto-update on vimrc updates

"set noeb vb t_vb=  -> I don't what is that...
"set cinkeys=0{,0},:,0#,!,!^F  -> I don't know as well
"set list  -> I don't know
"set listchars=tab:›\ ,trail:•,extends:#,nbsp:. -> Highlight problematic whitespace

" My preferred autoindent features
filetype indent off
set autoindent
set nocindent

set expandtab " -> Insert spaces when the tab key is hit

set tabstop=2 " -> Tab spacing of 4

set autoread " -> Detect if the file change outside of vim

syntax on " -> Alternative syntax highlighting colours for a dark background
colorscheme mango " -> specific color

set number " -> Enable number

set smartindent " -> autoindent for new lines
set shiftwidth=2 " -> indentation size

set mousehide " -> Hide the mouse cursor while typing
scriptencoding utf-8 " -> use utf-8 encrypt
set history=1000 " -> Store a ton of history
set hidden " -> Allow buffer switching without saving
set showmode " -> Display the current mode
set cursorline " -> Highlight current line

hi TabLineFill ctermfg=Red ctermbg=DarkGreen " -> color of the tab band background
hi TabLine ctermfg=Black ctermbg=Red " -> color of the other tab
hi TabLineSel ctermfg=Yellow ctermbg=Black " -> color of the current tab



set showmatch " ->Show matching brackets/parenthesis
set incsearch " -> Find as you type search
set hlsearch " -> Highlight search terms
set winminheight=0 " -> Windows can be 0 line high
set ignorecase " ->Case insensitive search
set smartcase " -> Case sensitive when uc present
set wildmenu " -> Show list instead of just completing (command line)
set wildmode=list:longest,full " Command <Tab> completion, list matches, then longest common part, then all. (command line)
set scrolljump=5 " -> Lines to scroll when cursor leaves screen
set scrolloff=3 " -> Minimum lines to keep above and below cursor

set splitright " -> open split file on the right
set splitbelow " -> open split file below
set fileformat=unix " -> file format unix

set nocompatible   " -> Disable vi-compatibility
set laststatus=2   " -> Always show the statusline
set encoding=utf-8 " -> Necessary to show Unicode glyphs
set noshowmode
set t_Co=256 " -> Explicitly tell Vim that the terminal supports 256 colors

match ErrorMsg /\%>120v.\+/ " -> max lign length

set nowrap " -> Don't Wrap long lines
set pastetoggle=<leader>a| " -> Define paste toogle

autocmd BufNewFile,BufRead *.handlebars set filetype=html


" tabs
nnoremap th  :tabfirst<CR>|  " -> Go to first tab
nnoremap ty  :tabnext<CR>| " ->  Go to the right tab
nnoremap tr  :tabprev<CR>| " -> Go to previous tab
nnoremap tl  :tablast<CR>| " -> Go to last tab
nnoremap te  :Texplore<CR>| " -> Open a new tab explore
nnoremap tt  :tabedit<Space>| " -> open a file in a new tab
nnoremap td  :tabclose<CR>| " -> close the current tab
nnoremap tn :tabnew<CR>| " -> open a new tab

nnoremap <leader>j :%!python -m json.tool<CR>==| " -> move the line to the bottom

"nnoremap <leader>k :m .-2<CR>==| " -> move the line to the top
"nnoremap <leader>j :m .+1<CR>==| " -> move the line to the bottom
"nnoremap <leader>jj :t .<CR>==| " -> duplicate the line to the botton
"nnoremap <leader>kk :t .-2<CR>==| " -> duplicate a line to the up

nnoremap <leader><leader>  :NERDTreeToggle<CR> <bar> :NERDTreeMirror<CR>| " -> open NERDTree
nnoremap <C-S> :w<CR>| " -> save the file
nnoremap <C-F7> :Tabularize /=<CR>| " ->

inoremap <C-S> <C-O>:w<CR>| " -> Save the file on insert mode

noremap <Up> <nop>| " -> disable up arrow
noremap <Down> <nop>| " -> disable down arrow
noremap <Left> <nop>| " -> disable left arrow
noremap <Right> <nop>| " -> disable right arrow

imap <up> <nop>| " -> disable up arrow on insert mode
imap <down> <nop>| " -> disable down arrow on insert mode
imap <left> <nop>| " -> disable left arrow on insert mode
imap <right> <nop>| " -> disable right arrow on insert mode


"autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif
