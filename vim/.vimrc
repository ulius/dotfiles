set t_Co=256
colorscheme zenburn
syntax on


"call pathogen#infect() 

set ruler
let mapleader = ","

filetype indent on
filetype plugin on

"make backspace work
set bs=2 

"searching/moving
set ignorecase
set smartcase
nnoremap <leader><space> :noh<cr>

"to stop from hitting the goddamn help menu
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set hidden

" highlight current line
set cursorline

map <F2> :NERDTreeToggle<CR>


"tabs
map <C-h> :MBEbp<CR>
map <C-l> :MBEbn<CR>
let g:miniBufExplorerMoreThanOne = 2
"let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

" Status Line {  
        set laststatus=2                             " always show statusbar  
        set statusline=  
        set statusline+=%-10.3n\                     " buffer number  
        set statusline+=%f\                          " filename   
        set statusline+=%h%m%r%w                     " status flags  
        set statusline+=\[%{strlen(&ft)?&ft:'none'}] " file type  
        set statusline+=%=                           " right align remainder  
        set statusline+=0x%-8B                       " character value  
        set statusline+=%-14(%l,%c%V%)               " line, character  
        set statusline+=%<%P                         " file position  
"}  

" Filetype
au BufNewFile,BufRead *.twig set filetype=jinja

" PHP parser check (CTRL-L)
" Checks current file for php parser errors
noremap <C-L> :!php -l %<CR>

" Taken from Gary Bernhardt's Destroy All Software screencast 'File Navigation in Vim'
" %% will show /path/to/current/dir/
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

inoremap jj <ESC>

