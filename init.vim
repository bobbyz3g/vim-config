set nu
set nocompatible

set cursorline
set showmatch 

set tabstop=4
set shiftwidth=4
set autoindent

set list listchars=extends:❯,precedes:❮,tab:▸\ ,trail:˽

syntax enable
syntax on 

inoremap jk <Esc>

call plug#begin()
    Plug 'altercation/vim-colors-solarized'

    Plug 'junegunn/vim-easy-align'

    Plug 'scrooloose/nerdtree'

    Plug 'jistr/vim-nerdtree-tabs'

    Plug 'Xuyuanp/nerdtree-git-plugin'

	Plug 'vim-airline/vim-airline'
	
	Plug 'vim-airline/vim-airline-themes'

	Plug 'jiangmiao/auto-pairs'

call plug#end()

set background=dark
colorscheme solarized

" =================================================================== 
" NERDTree
" ===================================================================
map <F10> :NERDTreeToggle<CR>
nmap <M-m> :NERDTreeFind<CR>

let NERDTreeShowLineNumbers=1

let NERDTreeAutoCenter=1

let NERDTreeShowHidden=0

let NERDTreeIgnore=['\.pyc','\~$','\.swp']

let g:nerdtree_tabs_open_on_console_startup=1

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:NERDTreeShowIgnoredStatus = 1
nmap <Leader>pwd :NERDTreeCWD<CR>

:nn <Leader>1 1gt
:nn <Leader>2 2gt
:nn <Leader>3 3gt
:nn <Leader>4 4gt
:nn <Leader>5 5gt
:nn <Leader>6 6gt
:nn <Leader>7 7gt
:nn <Leader>8 8gt
:nn <Leader>9 8gt
:nn <Leader>0 :tablast<CR>


