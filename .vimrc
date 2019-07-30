set number relativenumber
set noswapfile
set autoindent
set ruler
set laststatus=2
colo colors-wal
let g:powerline_pycmd = 'py3'
filetype plugin on
syntax on
map <F6> :w<CR>:silent! !pdflatex %<CR>:!clear<CR>   
map <F7> :silent! !zathura %:r.pdf &<CR>:!clear<CR>     
map <F8> :set spell spelllang=en_us<CR>
nnoremap <Tab><Tab> :/<---><CR>gnc
autocmd FileType tex inoremap <Tab>b <Esc>vbyi\begin{<Esc>A}<CR><CR>\end{<Esc>pA}<Esc>k0i
autocmd FileType tex inoremap <Tab>f \frac{<--->}{<--->}<Esc>3b
autocmd FileType tex inoremap <Tab>F $<--->$<Esc>b
autocmd FileType tex inoremap <Tab>s \sqrt{<--->}<Esc>3b
autocmd FileType tex inoremap <Tab>i \item{<--->}<Esc>3b
autocmd FileType cpp inoremap <Tab>i if(<--->){<CR>	<---><CR>}<Esc>0x3k
autocmd FileType cpp inoremap <Tab>d do{<CR>	<---><CR>}while(<--->);<Esc>0x3k
autocmd FileType cpp inoremap <Tab>w while(<--->){<CR>	<---><CR>}<Esc>0x3k
autocmd FileType cpp inoremap <Tab>f for(<--->;<--->;<--->){<CR>	<---><CR>}<Esc>0x3k
autocmd FileType sh inoremap <Tab>i if [ <---> ];<CR>then<CR><---><CR>fi<Esc>04k
autocmd FileType sh inoremap <Tab>f for <---> in $<--->;<CR>do<CR><---><CR>done<Esc>04k
autocmd FileType sh inoremap <Tab>e if [ <---> ];<CR>then<CR><---><CR>else<CR><---><CR>fi<Esc>06k
