set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call vundle#end()            " required

autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

syntax on
set nu
set encoding=utf-8

"split navigations
nnoremap <C-Down> <C-W><C-J>
nnoremap <C-Up> <C-W><C-K>
nnoremap <C-Right> <C-W><C-L>
nnoremap <C-Left> <C-W><C-H>

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/ctags.vim'
"Plugin 'scrooloose/syntastic'
Plugin 'vim-syntastic/syntastic'
"Plugin 'maralla/validator.vim' // compile vim with python 3 =(
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-scripts/Conque-GDB'
"Plugin 'vim-scripts/indentpython.vim'


map <C-b> :NERDTreeToggle<CR>
map <C-d> :q<CR>
map <C-k> :ConqueGdb <Enter> make program <Enter> 
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr', '\.o$', 'tags']
map <F5> <ESC>:!ctags -R --extra=+fq --c-kinds=+px --fields=+iaS .<cr><cr>

"syntatic
"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*
"let g:syntastic_always_populate_loc_list = 0
"let g:syntastic_auto_loc_list = 0
"let g:syntastic_check_on_open = 0
"let g:syntastic_check_on_wq = 0
"let g:syntastic_check_on_w = 0
"let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = ' -std=c++11'

let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [],'passive_filetypes': [] }
map <C-l> :SyntasticCheck<CR>
"Identation
" by default, the indent is 2 spaces. 
set ai
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype ruby setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype coffeescript setlocal ts=4 sw=4 sts=0 expandtab
autocmd Filetype jade setlocal ts=4 sw=4 sts=0 expandtab

"complete 
"https://valloric.github.io/YouCompleteMe/#ubuntu-linux-x64
"http://www.alexeyshmalko.com/2014/youcompleteme-ultimate-autocomplete-plugin-for-vim/
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

colorscheme koehler
set cursorline
hi CursorLine   cterm=NONE ctermbg=black  guibg=darkred


