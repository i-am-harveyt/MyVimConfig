set nu rnu " set hybrid line number
set smartindent " make indent smart
set tabstop=4
set shiftwidth=4
set expandtab " tab to space
set mouse=a " enable mouse
set cursorline " set a line show here cursor is
set showcmd
set encoding=UTF-8
set clipboard=unnamed
set updatetime=100
syntax enable
set background=dark " If your terminal window is light theme, turn light
set backspace=indent,eol,start
set t_Co=256 " support 256 colors
" To avoid bug in CoC
set nobackup
set nowritebackup

" For bracket auto-completion
inoremap " ""<LEFT>
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
" inoremap ' ''<LEFT>
" inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap ( ()<LEFT>
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap [ []<LEFT>
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap { {}<LEFT>
inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
" inoremap < <><LEFT>
inoremap <expr> > strpart(getline('.'), col('.')-1, 1) == ">" ? "\<Right>" : ">"

"For VimPlug
call plug#begin('~/.config/vim/plugin')
" NERDtree
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
" Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Which key
Plug 'liuchengxu/vim-which-key'
" Themes
Plug 'liuchengxu/space-vim-dark'
Plug 'joshdick/onedark.vim'
Plug 'chriskempson/vim-tomorrow-theme'
" Commentary
Plug 'tpope/vim-commentary'
" vim-coc
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

" For StartUp settings
function StartUp()
    if ''==@%
        NERDTree
    endif
endfunction
autocmd VimEnter * call StartUp()

" For CoC
" Use <C-n>, <C-p>, <up> and <down> to navigate completion list:
inoremap <silent><expr> <C-j> coc#pum#visible() ? coc#pum#next(1) : "\<C-j>"
inoremap <silent><expr> <C-k> coc#pum#visible() ? coc#pum#prev(1) : "\<C-k>"
inoremap <silent><expr> <down> coc#pum#visible() ? coc#pum#next(0) : "\<down>"
inoremap <silent><expr> <up> coc#pum#visible() ? coc#pum#prev(0) : "\<up>"
" Use <C-i> to confirm
inoremap <silent><expr> <C-i> coc#pum#visible() ? coc#pum#confirm() : "\<C-i>"

" Colorschemes
" colorscheme space-vim-dark
colorscheme tomorrow-night-eighties
" colorscheme onedark

" For airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
autocmd BufDelete * call airline#extensions#tabline#buflist#invalidate()

" For WhichKey
set timeoutlen=50
call which_key#register('<Space>', "g:which_key_map")
let g:mapleader = "\<Space>"
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>

let g:which_key_map = {
    \ 'name': 'All',
    \ 'Q': [':q', 'quit'],
    \ 'e': [':NERDTreeToggle', 'Explorer'],
    \ '/': [':Commentary', 'Comment'],
    \}

let g:which_key_map['b'] = {
    \'name': '+buffer',
    \'N': [':enew', 'new-empty-buffer'],
    \'d': [':bd', 'delete-buffer'],
    \'n': [':bn', 'next-buffer'],
    \'p': [':bp', 'previous-buffer'],
    \}

let g:which_key_map.f = {
    \ 'name': '+file',
    \ 's': [':w', 'save'],
    \ 'e': [':e', 'edit'],
    \}

nnoremap <Leader>te :tabe<space>
let g:which_key_map.t = {
    \ 'name': '+tab',
    \ 'n': [':tabNext', 'next-tab'],
    \ 'p': [':tabprevious', 'previous-tab'],
    \ 'N': [':tabnew', 'New-tab'],
    \ 'c': [':tabclose', 'tab-close'],
    \ 'e': 'edit-in-new-tab',
    \}

let g:which_key_map.T = {
    \ 'name': '+NERDTree',
    \ 't': [':NERDTreeToggle', 'toggle-NERDTree'],
    \ 'r': [':NERDTreeRefreshRoot', 'refresh-NERDTree'],
    \}

let g:which_key_map[';'] = {
    \ 'name': '+commonly-used-command',
    \ ';': [':source %', 'source %'],
    \ 't': [':term', 'terminal'],
    \}

let g:which_key_map['w'] = {
    \ 'name': '+windows',
    \ 'c': ['<C-w>c', 'close-current-window'] ,
    \ 'h': ['<C-w><left>', 'move-to-left-window'] ,
    \ 'j': ['<C-w><down>', 'move-to-below-window'] ,
    \ 'k': ['<C-w><up>', 'move-to-upper-window'],
    \ 'l': ['<C-w><left>', 'move-to-left-window'],
    \ 'b': ['<C-w>=', 'balance-window'],
    \}

let g:which_key_map.w.s = {
    \ 'name': '+split',
    \ 'h': ['<C-w>s', 'split-up-down'],
    \ 'v': ['<C-w>v', 'split-left-right'],
    \}

let g:which_key_map.l = {
    \ 'name': '+CoC',
    \ 'd': [':CocDiagnostics', 'Diagnostics'],
    \}
