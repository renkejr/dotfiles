set showmatch
set hlsearch
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent
set number
set rnu
set wildmode=longest,list
set cc=132

filetype plugin indent on
syntax on
filetype plugin on

" Plugins
call plug#begin()
    " Color schemes
    Plug 'dracula/vim'
    Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
    " NERDTree
    Plug 'scrooloose/nerdtree'
    Plug 'preservim/nerdcommenter'
    Plug 'ryanoasis/vim-devicons'
    " Snippets
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    " ?
    Plug 'mhinz/vim-startify'
    " Code completion
    Plug 'neoclide/coc.nvim', { 'branch': 'release' }
    " Markdown
    Plug 'godlygeek/tabular'
    Plug 'elzr/vim-json'
    Plug 'plasticboy/vim-markdown'
    Plug 'vim-pandoc/vim-pandoc-syntax'
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }
call plug#end()

" Set color schemes
set termguicolors
syntax enable
colorscheme catppuccin

" Open new split panes to right and below
set splitright
set splitbelow

" Move line or visually selected block - alt+j/k
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Move split panes to left/bottom/top/right
nnoremap <A-h> <C-W>H
nnoremap <A-j> <C-W>J
nnoremap <A-k> <C-W>K
nnoremap <A-l> <C-W>L

" Move between panes to left/bottom/top/right
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Press i to enter insert mode, and ii to exit insert mode.
:inoremap ii <Esc>
:inoremap jk <Esc>
:inoremap kj <Esc>
:vnoremap jk <Esc>
:vnoremap kj <Esc>

" Trigger snippets configuration
let g:UltiSnipsExpandTrigger="<tab>"  " use <Tab> to trigger autocompletion

" Markdown configs
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1  " for YAML format
let g:vim_markdown_toml_frontmatter = 1  " for TOML format
let g:vim_markdown_json_frontmatter = 1  " for JSON format
let g:mkdp_auto_start = 1
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 1

augroup pandoc_syntax
    au! BufNewFile,BufFilePre,BufRead *.md set filetype=markdown.pandoc
augroup END

" Open file in a text by placing text and gf
nnoremap gf :vert winc f<cr>

" Vim jump to the last position when reopening a file
if has("autocmd")
    autocmd VimEnter * NERDTree
    au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
        \| exe "normal! g'\"" | endif
endif

