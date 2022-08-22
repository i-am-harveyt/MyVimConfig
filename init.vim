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

" For bracket auto-completion
inoremap " ""<LEFT>
inoremap <expr> " strpart(getline('.'), col('.')-1, 1) == "\"" ? "\<Right>" : "\"\"\<Left>"
inoremap ' ''<LEFT>
inoremap <expr> ' strpart(getline('.'), col('.')-1, 1) == "\'" ? "\<Right>" : "\'\'\<Left>"
inoremap ( ()<LEFT>
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap [ []<LEFT>
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap { {}<LEFT>
inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
" inoremap < <><LEFT>
inoremap <expr> > strpart(getline('.'), col('.')-1, 1) == ">" ? "\<Right>" : ">"

" For use <Tab> to navigate the completion list
" inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
" inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" For use <c-j> to trigger completion
" inoremap <silent><expr> <c-j> coc#_select_confirm()

"For VimPlug
call plug#begin('~/.config/nvim/plugged')

" Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

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

call plug#end()

" For StartUp settings
function StartUp()
    if ''==@%
        NERDTree
    endif
endfunction
autocmd VimEnter * call StartUp()

" colorscheme: space vim dark
" colorscheme space-vim-dark

" colorscheme: tomorrow night eighties
colorscheme tomorrow-night-eighties

" colorscheme: one dark
" colorscheme onedark

" For airline
let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1

" For WhichKey
set timeoutlen=50
call which_key#register('<Space>', "g:which_key_map")
let g:mapleader = "\<Space>"
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>

nnoremap <Leader>Q :q <CR>
nnoremap <Leader>e :NERDTreeToggle <CR>
nnoremap <Leader>/ :Commentary<CR>
let g:which_key_map = {
    \ 'name': 'All',
    \ 'Q': 'quit',
    \ 'e': 'Explorer',
    \ '/': 'Comment',
    \}

nnoremap <Leader>fs :w <CR>
nnoremap <Leader>fe :e<space>
let g:which_key_map.f = {
    \ 'name': '+file',
    \ 's': 'save',
    \ 'e': 'edit',
    \}

nnoremap <Leader>tn :tabNext <CR>
nnoremap <Leader>tp :tabprevious <CR>
nnoremap <Leader>tN :tabnew <CR>
nnoremap <Leader>tc :tabclose <CR>
nnoremap <Leader>te :tabe<space>
let g:which_key_map.t = {
    \ 'name': '+tab',
    \ 'n': 'next-tab',
    \ 'p': 'previous-tab',
    \ 'N': 'New-tab',
    \ 'c': 'tab-close',
    \ 'e': 'edit-in-new-tab',
    \}

nnoremap <Leader>Tt :NERDTreeToggle <CR>
nnoremap <Leader>Tr :NERDTreeRefreshRoot <CR>
let g:which_key_map.T = {
    \ 'name': '+NERDTree',
    \ 't': 'toggle-NERDTree',
    \ 'r': 'refresh-NERDTree',
    \}

nnoremap <Leader>;; :source % <CR>
nnoremap <Leader>;t :terminal <CR>
let g:which_key_map[';'] = {
    \ 'name': '+commonly-used-command',
    \ ';': 'source %',
    \ 't': 'terminal',
    \}

nnoremap <Leader>wc :close <CR>
nnoremap <Leader>wk <C-w><up>
nnoremap <Leader>wj <C-w><down>
nnoremap <Leader>wh <C-w><left>
nnoremap <Leader>wl <C-w><right>
nnoremap <Leader>wb <C-w>=
let g:which_key_map['w'] = {
    \ 'name': '+windows',
    \ 'c': 'close-current-window',
    \ 'h': 'move-to-left-window',
    \ 'j': 'move-to-below-window',
    \ 'k': 'move-to-upper-window',
    \ 'l': 'move-to-left-window',
    \ 'b': 'balance-window',
    \}

nnoremap <Leader>wsv <C-w>v <CR>
nnoremap <Leader>wsh <C-w>s <CR>
let g:which_key_map.w.s = {
    \ 'name': '+split',
    \ 'h': 'split-up-down',
    \ 'v': 'split-left-right',
    \}

