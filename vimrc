set background=dark
colorscheme distinguished
syntax on
set nu
set filetype=on
set shiftwidth=3
set tabstop=3
set expandtab
filetype plugin indent on
autocmd FileType c,cpp :set cindent
autocmd FileType c,cpp :set shiftwidth=3
autocmd FileType sh :set shiftwidth=3
autocmd FileType Jenkinsfile :set si
autocmd BufEnter *.cpp :setlocal cindent cino=j1,(0,ws,Ws
autocmd BufNewFile,BufRead Jenkinsfile set si

set makeprg=/usr2/scripts/build.sh
"set makeprg=/home/tk22w/Proj/rtds-tkfmp/src/make_fmp_6.0.0
"set makeprg=/export/home/tk22w/Proj/rtds/rtf/clients/build_all.sh

nnoremap <F2> :bp!<CR>
inoremap <F2> <Esc>:bp!<CR>i
nnoremap <F4> :E<CR>
inoremap <F4> <Esc>:E<CR>
nnoremap <F5> :nohlsearch<CR>
inoremap <F5> <Esc>:nohlsearch<CR>
nnoremap <F7> I//<Esc>
inoremap <F7> <Esc>I//
nnoremap <F9> :wall \| cn<CR>
inoremap <F9> <Esc>:wall \| cn<CR>
nnoremap <F10> :wqall<CR>
inoremap <F10> <Esc>:wqall<CR>
nnoremap <F11> :set makeprg=/home/tk22w/Proj/rtds-tkfmp/src/make_fmp_6.0.0 \| wall \| make debug \| set makeprg=/usr2/scripts/build.sh<CR>
inoremap <F11> <Esc>:set makeprg=/home/tk22w/Proj/rtds-tkfmp/src/make_fmp_6.0.0 \| wall \| make debug \| set makeprg=/usr2/scripts/build.sh<CR>
nnoremap <F12> :wall \| make -gj70<CR>
inoremap <F12> <Esc>:wall \| make -gj70<CR>

inoremap <C-X>{ {<CR>}<Esc>ko
inoremap <C-X>O <Esc>O
inoremap <C-X>o <Esc>o
inoremap <C-X>d <Esc>dda

abbreviate @t //TODO
abbreviate @b /// \brief
abbreviate @v ///<
abbreviate @p /// @param
abbreviate @r /// @return
abbreviate @n //NOSONAR
