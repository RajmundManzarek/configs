"set t_ut=
"set title
"set nocompatible 
syntax on
set nonu
"colorscheme distinguished
colorscheme molokai
highlight Visual ctermbg=Blue ctermfg=Yellow
set filetype=on
autocmd FileType c,cpp :set cindent
autocmd BufEnter *.cpp :setlocal cindent cino=j1,(0,ws,Ws
autocmd FileType html :set si
autocmd FileType javascript :set efm=%f:\ line\ %l\\,\ col\ %c\\,\ %m
filetype plugin indent on
set shiftround
set cinkeys=0{,0},0),!^F,o,O,e
set cino=i-s
set path=.,../include,/home/wdu/sources/include
ab #p #------------------------------------------------------------------------------------<CR><CR><CR><CR>------------------------------------------------------------------------------------<Esc>2kA
ab #c //-----------------------------------------------------------------------------------<CR><CR><CR><CR>-----------------------------------------------------------------------------------<Esc>2kA
ab #j <Esc>mzi/**<CR>*<CR>*<CR>*<CR>*/<Esc>=`z`z2jA
ab #i #include
ab @b /// \brief
ab @v ///<
ab @p /// @param
ab @r /// @return

if !exists('g:loaded_matchit')
  runtime macros/matchit.vim
endif

nnoremap <F2> :w \| :bp<CR>
inoremap <F2> <Esc>:w \| :bp<CR>i
nnoremap <F3> :buffers<CR>
inoremap <F3> <Esc>:buffers<CR>
nnoremap <F4> <C-W><C-W>
inoremap <F4> <Esc><C-W><C-W>i
nnoremap <F5> :nohlsearch<CR>
inoremap <F5> <Esc>:nohlsearch<CR>
nnoremap <F6> :wall \| make build<CR>
inoremap <F6> <Esc>:wall \| make build<CR>
nnoremap <F7> ^i//<Esc>
inoremap <F7> <Esc>^i//
nnoremap <F8> <C-Y>
inoremap <F8> <Esc><C-Y>
nnoremap <F9> :wall \| cn<CR>
inoremap <F9> <Esc>:wall \| cn<CR>
nnoremap <F10> :wqall<CR>
inoremap <F10> <Esc>:wqall<CR>
nnoremap <F11> :wall \| make test<CR>
inoremap <F11> <Esc>:wall! \| make test<CR>
nnoremap <F12> :wall \| make<CR>
inoremap <F12> <Esc>:wall \| make<CR>

nnoremap ,<Up> :m-2<CR>==
nnoremap ,<Down> :m+<CR>==
vnoremap ,<Up> :m '<-2<CR>gv=gv
vnoremap ,<Down> :m '>+1<CR>gv=gv

inoremap <C-X>d * <C-R>=strftime("%a %b %d %Y")<CR> - wdu.gpw<CR>- Wersja 

runtime! ftplugin/man.vim
