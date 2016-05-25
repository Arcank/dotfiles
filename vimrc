" Don't be compatible with the old Vi
:set nocompatible

" Searches are not case sensitive
:set ignorecase

" Define the tab behavior
:set tabstop=2 shiftwidth=2 expandtab

" Allows navigating from a row to another with left and right keystrokes
:set whichwrap=<,>,[,]

" Print the cursor position 'row,column'
:set ruler

" Activate the syntaxic coloration
:syntax on

" Mark the 80 characters limit.
" Based on http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns.
:highlight OverLength ctermbg=red ctermfg=white guibg=#592929
:match OverLength /\%81v.\+/
