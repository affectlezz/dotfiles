" Define leader
let mapleader=" "

call plug#begin()

" Theming
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
Plug 'itchyny/lightline.vim'

" LaTeX
Plug 'KeitaNakamura/tex-conceal.vim'
Plug 'lervag/vimtex'

" Typesetting
Plug 'jiangmiao/auto-pairs'

" Features
Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}
Plug 'vim-syntastic/syntastic'
Plug 'rust-lang/rust.vim'
Plug 'tpope/vim-surround'
Plug 'sirver/ultisnips'
Plug 'tpope/vim-fugitive'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'neovim/nvim-lspconfig'

call plug#end()

" Settings
colorscheme catppuccin-macchiato
let g:lightline = {'colorscheme': 'catppuccin'}
filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set wrap breakindent
set encoding=utf-8
set relativenumber
set textwidth=0
syntax enable
set hidden
set title

" Navigation
nnoremap <leader>nn :CHADopen<CR>
nnoremap <leader>vc :e ~/.config/nvim/init.vim<CR>
nnoremap <leader>use :UltiSnipsEdit<CR>

" LaTeX
nnoremap <leader>ll :VimtexCompile<CR>
set conceallevel=1
let g:tex_conceal='abdmg'
hi Conceal ctermbg=none

let g:tex_flavor='latex'
let g:vimtex_view_method='zathura'
let g:vimtex_quickfix_mode=0

" Autocompletion
let g:coq_settings = { 'auto_start': 'shut-up' }
let g:rustfmt_autosave = 1

" Snippets
let g:UltiSnipsExpandTrigger       = '<Tab>'
let g:UltiSnipsJumpForwardTrigger  = '<Tab>'
let g:UltiSnipsJumpBackwardTrigger = '<S-Tab>'
let g:UltiSnipsSnippetDirectories=[$HOME.'/.vim/UltiSnips']

" Syntax
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
