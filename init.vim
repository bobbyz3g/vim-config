set nu
set encoding=UTF-8
set nocompatible

set showmatch

set tabstop=4
set shiftwidth=4
set autoindent
set cursorline

set spell spelllang=en_us

syntax enable
syntax on
inoremap jk <Esc>

set updatetime=100

" 指定插件的安装位置
call plug#begin('~/.vim/plugged')


" 插件引入的形式为 Plug 'plugin-url'
" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'ekalinin/Dockerfile.vim'

Plug 'morhetz/gruvbox'

" airline
Plug 'vim-airline/vim-airline'

Plug 'vim-airline/vim-airline-themes'

" vscode.nvim
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

Plug 'ryanoasis/vim-devicons'

Plug 'preservim/nerdtree'

Plug 'mhinz/vim-signify'

call plug#end()

" config theme
colorscheme gruvbox

" --+ vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

nnoremap <F10> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
nnoremap <C-n> :NERDTree<CR>
