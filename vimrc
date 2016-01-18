:set tabstop=2
:set shiftwidth=2
:set expandtab

" Mark the 80 characters limit.
" Based on http://stackoverflow.com/questions/235439/vim-80-column-layout-concerns.
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
