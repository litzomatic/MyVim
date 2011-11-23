" File: .vimrc
" Author: Derek Litz
" Created: 12 Dec 2008 6:54:22

"let g:zenburn_enable_TagHighlight = 1
call pathogen#infect()
"Whitespace matters!
:let w:MixedWhiteSpaceM1=matchadd('ErrorMsg', '^\%( \+\t\+\|\t\+ \+\)\s*', -1)
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
let g:SuperTabDefaultCompletionType = "<c-x><c-u>"

" Creates a view, what els does this do besides
" support manual folding and return your cursor
" to the position it was in before closing?
" http://vim.wikia.com/wiki/Make_views_automatic
set viewoptions-=options
augroup vimrc
    autocmd BufWritePost *
    \   if expand('%') != '' && &buftype !~ 'nofile'
    \|      mkview
    \|  endif
    autocmd BufRead *
    \   if expand('%') != '' && &buftype !~ 'nofile'
    \|      silent loadview
    \|  endif
augroup END

" http://stackoverflow.com/questions/357785/what-is-the-recommended-way-to-use-vim-folding-for-python-coding
:set foldmethod=indent
nnoremap <space> zO

vnoremap <space> zC

" http://stackoverflow.com/questions/657447/vim-clear-last-search-highlighting
nnoremap <esc> :set invhlsearch<return><esc>


"Old stuff
set nocompatible
set shiftwidth=4
set tabstop=4
set expandtab
set autoindent
set number
set smarttab
set numberwidth=1
"loadview
"autocmd BufWinEnter *.* silent loadview
syntax enable
"for zenburn
set t_Co=256
colorscheme zenburn

 " colorscheme desert

filetype plugin on
let g:BASH_AuthorName = 'Derek Litz'
let g:BASH_Email = 'litzomatic@gmail.com'
let g:BASH_Company = 'Litzomatic'
