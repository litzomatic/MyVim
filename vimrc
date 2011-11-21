" File: .vimrc
" Author: Derek Litz
" Created: 12 Dec 2008 6:54:22

"let g:zenburn_enable_TagHighlight = 1
call pathogen#infect()
"Whitespace matters!
:let w:MixedWhiteSpaceM1=matchadd('ErrorMsg', '^\%( \+\t\+\|\t\+ \+\)\s\+', -1)
:let w:TrailingWhiteSpaceM1=matchadd('ErrorMsg', '\s\+$', -1)
:let w:LineToLong=matchadd('ErrorMsg', '\%>120v.\+', -1)

"Zenburn mod attempting to keep track of what I change. This may be futile.
"May be more useful just to do a diff :)
"hi Search          ctermfg=255 cterm=bold
"hi CursorLine      ctermbg=232

"New Stuff
set hlsearch
set cursorline
"set cursorcolumn

"Old stuff
set nocompatible
set shiftwidth=4
set tabstop=4
"set expandtab
set autoindent
set number
set smarttab
set numberwidth=1
"loadview
autocmd BufWinEnter *.* silent loadview
syntax enable
"for zenburn
set t_Co=256
colorscheme zenburn

 " colorscheme desert

filetype plugin on
let g:BASH_AuthorName = 'Derek Litz'
let g:BASH_Email = 'litzomatic@gmail.com'
let g:BASH_Company = 'Litzomatic'
