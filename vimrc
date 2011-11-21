" File: .vimrc
" Author: Derek Litz
" Created: 12 Dec 2008 6:54:22

"let g:zenburn_enable_TagHighlight = 1
call pathogen#infect()
"Whitespace matters!
"Show mixed leading whitespace (bad)
":highlight MixedWhiteSpace ctermbg=darkgreen guibg=darkgreen
":autocmd ColorScheme * highlight MixedWhiteSpace ctermbg=darkgreen guibg=darkgreen
:let w:MixedWhiteSpaceM1=matchadd('ErrorMsg', '^\%( \+\t\+\|\t\+ \+\)\s\+', -1)
":match MixedWhiteSpace /^\%( \+\t\+\|\t\+ \+\)/
":highlight TrailingWhiteSpace ctermbg=darkgreen guibg=darkgreen
":autocmd ColorScheme * highlight TrailingWhiteSpace ctermbg=darkgreen guibg=darkgreen
:let w:TrailingWhiteSpaceM1=matchadd('ErrorMsg', '\s\+$', -1)
":match TrailingWhiteSpace /\s\+$/
"Zenburn mod
"hi Search          ctermfg=255 cterm=bold
"hi CursorLine      ctermbg=232
:let w:LineToLong=matchadd('ErrorMsg', '\%>120v.\+', -1)

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
