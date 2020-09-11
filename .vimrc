syntax on
set nonu
"colorscheme molokai
colorscheme distinguished
"highlight Visual ctermbg=Blue ctermfg=Yellow
set filetype=on
autocmd FileType c,cpp :set cindent
autocmd BufEnter *.cpp :setlocal cindent cino=j1,(0,ws,Ws
autocmd FileType html :set si
autocmd FileType javascript :set efm=%f:\ line\ %l\\,\ col\ %c\\,\ %m
autocmd FileType rust :set shiftwidth=2
autocmd FileType typescript :set shiftwidth=2
autocmd FileType yaml :set shiftwidth=2
filetype plugin indent on
set shiftround
set cinkeys=0{,0},0),!^F,o,O,e
set cino=i-s
set path=.,../include,/usr/local/include

if !exists('g:loaded_matchit')
  runtime macros/matchit.vim
endif

nnoremap <F2> :bp!<CR>
inoremap <F2> <Esc>:bp!<CR>i
nnoremap <F3> :<C-F>
inoremap <F3> <Esc>:<C-F>
nnoremap <F4> :E<CR>
inoremap <F4> <Esc>:E<CR>
nnoremap <F5> :nohlsearch<CR>
inoremap <F5> <Esc>:nohlsearch<CR>
nnoremap <F6> :bde<CR>
inoremap <F6> <Esc>:bde<CR>
nnoremap <F7> ^i//<Esc>
inoremap <F7> <Esc>^i//
nnoremap <F8> :wall \| only<CR>
inoremap <F8> <Esc>:wall \| only<CR>
nnoremap <F9> :wall \| cn<CR>
inoremap <F9> <Esc>:wall \| cn<CR>
nnoremap <F10> :wqall<CR>
inoremap <F10> <Esc>:wqall<CR>
nnoremap <F11> :wall \| make test<CR>
inoremap <F11> <Esc>:wall! \| make test<CR>
nnoremap <F12> :wall \| make<CR>
inoremap <F12> <Esc>:wall \| make<CR>

autocmd FileType rust nnoremap <F3> :RustFmt<CR>
autocmd FileType rust inoremap <F3> <Esc>:RustFmt<CR>
autocmd FileType rust nnoremap <F8> :wall \| make build --release<CR>
autocmd FileType rust inoremap <F8> <Esc>:wall \| make build --release<CR>
autocmd FileType rust nnoremap <F12> :wall \| make build<CR>
autocmd FileType rust inoremap <F12> <Esc>:wall \| make build<CR>
autocmd FileType typescript nnoremap <F12> :wall \| ! npm run build<CR>
autocmd FileType typescript inoremap <F12> <Esc>:wall \| ! npm run build<CR>

nnoremap ,<Up> :m-2<CR>==
nnoremap ,<Down> :m+<CR>==
vnoremap ,<Up> :m '<-2<CR>gv=gv
vnoremap ,<Down> :m '>+1<CR>gv=gv

inoremap <C-X>c <Esc>:copen<CR>
nnoremap <C-X>c :copen<CR>
inoremap <C-X>d * <C-R>=strftime("%a %b %d %Y")<CR> - wdu<CR>- V
inoremap <C-X>D <Esc>ddi
inoremap <C-X>o <Esc>o
inoremap <C-X>O <Esc>O
inoremap <C-X>t <Esc>:vimgrep TODO src/**/*<CR>
nnoremap <C-X>t :vimgrep TODO src/**/*<CR>

let mapleader = ","
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

runtime! ftplugin/man.vim
