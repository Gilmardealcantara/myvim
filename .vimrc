set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call vundle#end()            " required

autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

"split navigations
"nnoremap <C-Down> <C-W><C-J>
"nnoremap <C-Up> <C-W><C-K>
"nnoremap <C-Right> <C-W><C-L>
"nnoremap <C-Left> <C-W><C-H>

Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'joshdick/onedark.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'pangloss/vim-javascript'
Plugin 'maxmellon/vim-jsx-pretty'

map <C-b> :NERDTreeToggle<CR>
let NERDTreeIgnore=['__pycache__', '\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.o$', 'tags', 'node_modules']
"autocmd vimenter * NERDTree
let g:NERDTreeWinSize=20 


let g:lightline = {
  \ 'colorscheme': 'wombat',
  \ 'active': {
  \   'left': [ [ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
  \ },
  \ 'component_function': {
  \   'gitbranch': 'fugitive#head'
  \ },
  \ }

set wildignore+=*/node_modules/*,*.so,*.swp,*.zip     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }


filetype plugin indent on
syntax on
set ai
set number
set incsearch
set relativenumber
set hlsearch
set encoding=utf-8

"Identation
" by default, the indent is 2 spaces. 
set ai
set tabstop=4
set shiftwidth=4
set softtabstop=4

au FileType python
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab | "change tabs to spaces
    \ set autoindent |
    \ set fileformat=unix

"see tabs and spaces
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
"set list 

" Enable folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
set nowrap

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype coffeescript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype jade setlocal ts=4 sw=4 sts=0 expandtab

set cursorline
hi CursorLine   cterm=NONE ctermbg=white ctermfg=white 

colorscheme onedark
if has('nvim') || has('termguicolors')
	 set termguicolors
endif

"colorscheme flatcolor


