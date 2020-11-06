call plug#begin('~/.vim/plugged')
    Plug 'michaeljsmith/vim-indent-object'
    Plug 'artanikin/vim-synthwave84'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'Shougo/deoplete.nvim'
    Plug 'deoplete-plugins/deoplete-jedi'
    Plug 'evanleck/vim-svelte', {'branch': 'main'}
    Plug 'sheerun/vim-polyglot'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'jparise/vim-graphql'
    Plug 'vim-python/python-syntax'
    Plug 'sainnhe/gruvbox-material'
call plug#end()


let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = '/usr/bin/python3'

set expandtab
set tabstop=4
set shiftwidth=4

imap jj <Esc>

inoremap <Left> <Nop>
inoremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>

nnoremap <Left> <Nop>
nnoremap <Right> <Nop>
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>

set number relativenumber

set termguicolors
autocmd vimenter * hi Normal guibg=NONE ctermbg=NONE " transparent bg
autocmd vimenter * hi NonText guibg=NONE ctermbg=NONE " transparent bg
autocmd vimenter * hi EndOfBuffer guibg=NONE ctermbg=NONE " transparent bg
set background=dark
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material
function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
inoremap <silent><expr> <TAB>
    \ pumvisible() ? "\<C-n>" :
    \ <SID>check_back_space() ? "\<TAB>" :
    \ deoplete#manual_complete()

set backupcopy=yes
syntax on
