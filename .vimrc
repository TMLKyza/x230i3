set number relativenumber
set noswapfile
set autoindent
set ruler
set laststatus=2
let g:powerline_pycmd = 'py3'
filetype plugin on
syntax on
map <F6> :w<CR>:!pdflatex %<CR>:!clear<CR>   
map <F7> :silent! !evince %:r.pdf &<CR>:!clear<CR>      
