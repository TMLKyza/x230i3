set number relativenumber
set noswapfile
set autoindent
set ruler
set laststatus=2
let g:powerline_pycmd = 'py3'
filetype plugin on
syntax on
map <F6> :w<CR>:silent! !pdflatex %<CR>:!clear<CR>   
map <F7> :silent! !evince %:r.pdf &<CR>:!clear<CR>      
nnoremap <Space><Space> :/<---><CR>gnc
autocmd FileType tex inoremap <Tab>b <Esc>vbyi\begin{<Esc>A}<CR><CR>\end{<Esc>pA}<Esc>k0i
autocmd FileType tex inoremap <Tab>f \frac{<--->}{<--->}<Esc>3b
autocmd FileType tex inoremap <Tab>F $<--->$<Esc>b
autocmd FileType tex inoremap <Tab>s \sqrt{<--->}<Esc>3b
autocmd FileType tex inoremap <Tab>i \item{<--->}<Esc>3b
