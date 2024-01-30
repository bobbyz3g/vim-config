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

Plug 'neoclide/coc.nvim', {'branch': 'release'}

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
" ======================== coc.nvim 插件配置 ======================
" 详细见 https://github.com/neoclide/coc.nvim#example-vim-configuration
" 不清楚作用，推荐配置里面有，详细见 https://github.com/neoclide/coc.nvim/issues/649
set nobackup
set nowritebackup

" 更改更新时间， 默认是 4000 ms
set updatetime=300

" 为消息留出更多的空间
set cmdheight=2


" 追踪到定义的位置
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
" 查看被谁引用
nmap <silent> gr <Plug>(coc-references)

" 预览窗口显示文档
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

autocmd CursorHold * silent call CocActionAsync('highlight')

" 重命名的快捷操作
nmap <leader>rn <Plug>(coc-rename)

" 关闭提示后手动唤醒提示
inoremap <silent><expr> <c-l> coc#refresh()
" 通过回车展开代码片段
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" 可以通过 tab 键来切换提示列表选择
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" 代码提示列表选择， 将原本的 c-p 和 c-n 添加更习惯的方式
inoremap <silent><expr> <M-k> "\<C-p>"
inoremap <silent><expr> <M-j> "\<C-n>"

" 格式化代码， 需要 lsp 支持
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" 修复当前选中的代码
nmap <leader>qf  <Plug>(coc-fix-current)

" 显示错误信息
nmap <silent> <M-k> <Plug>(coc-diagnostic-prev)
nmap <silent> <M-j> <Plug>(coc-diagnostic-next)

" coc-go 的配置
" 在保存的时候自动导包
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
" =================================================================
