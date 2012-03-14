set t_Co=256
colorscheme zenburn
syntax on

"filetype off
"call pathogen#runtime_append_all_bundles()

call pathogen#helptags()
call pathogen#infect()

filetype indent on
filetype plugin on

set ruler
let mapleader = ","


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
" highlight searches
set hlsearch

map <F1> :NERDTreeFind <CR>
map <F2> :NERDTreeToggle getcwd() <CR>


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
        set statusline+=%{fugitive#statusline()}     " right align remainder  
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



set scrolloff=10

" so javascript indents after return
"  http://stackoverflow.com/a/5326852
set nocindent smartindent


" Tagbar
nnoremap <silent> <F9> :TagbarToggle<CR> 

" save and restore folds when a file is closed and re-opened
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

" folding
fu! CustomFoldText()
    "get first non-blank line
    let fs = v:foldstart
    while getline(fs) =~ '^\s*$' | let fs = nextnonblank(fs + 1)
    endwhile
    if fs > v:foldend
        let line = getline(v:foldstart)
    else
        let line = substitute(getline(fs), '\t', repeat(' ', &tabstop), 'g')
    endif

    let w = winwidth(0) - &foldcolumn - (&number ? 8 : 0)
    let foldSize = 1 + v:foldend - v:foldstart
    let foldSizeStr = " " . foldSize . " lines "
    let foldLevelStr = repeat("+--", v:foldlevel)
    let lineCount = line("$")
    let foldPercentage = printf("[%.1f", (foldSize*1.0)/lineCount*100) . "%] "
    let expansionString = repeat(".", w - strwidth(foldSizeStr.line.foldLevelStr.foldPercentage))
    return line . expansionString . foldSizeStr . foldPercentage . foldLevelStr
endf
set foldtext=CustomFoldText()


" Fold Backbone.js files on .extend lines
let @p = "/.extendzf%j"
nnoremap <leader>b @p 
nnoremap <leader>c zc
" open all folds 
nnoremap <leader>o zR
" close all folds 
nnoremap <leader>f zM
" delete fold at cursor
nnoremap <leader>d zd

" Reload VIMRC in file
"nnoremap <leader>r :source $MYVIMRC
" Quickly edit/reload the vimrc file
nmap  <leader>ev :vs $MYVIMRC<CR>
nmap  <leader>sv :so $MYVIMRC<CR>

" http://stackoverflow.com/q/526858
set wildmode=longest,list,full
set wildmenu

" press <F3> to toggle :set paste
set pastetoggle=<F3>

" Show syntax highlighting groups for word under cursor
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" OPEN FILES IN DIRECTORY OF CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" RENAME CURRENT FILE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! RenameFile()
    let old_name = expand('%')
    let new_name = input('New file name: ', expand('%'))
    if new_name != '' && new_name != old_name
        exec ':saveas ' . new_name
        exec ':silent !rm ' . old_name
        redraw!
    endif
endfunction
map <leader>n :call RenameFile()<cr>

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" remap <esc> to kj    
imap kj <ESC>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPS TO JUMP TO SPECIFIC COMMAND-T TARGETS AND FILES
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>gr :topleft :split Resources/config/routing.yml<cr>
function! ShowRoutes()
  " Requires 'scratch' plugin
  :topleft 50 :split __Routes__
  " Make sure Vim doesn't write __Routes__ as a file
  :set buftype=nofile
  " Delete everything
  :normal 1GdG
  " Put routes output in buffer
  :0r! console router:debug --env=prod
  " Size window to number of lines (1 plus rake output length)
  :execute ":normal " . line("$") . "_ "
  " Move cursor to bottom
  :normal 1GG
  " Delete empty trailing line
  :normal dd
endfunction
map <leader>gR :call ShowRoutes()<cr>
map <leader>gv :CommandTFlush<cr>\|:CommandT Resources/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT Controllers<cr>
map <leader>ge :CommandTFlush<cr>\|:CommandT Entity<cr>
map <leader>gj :CommandTFlush<cr>\|:CommandT Resources/public/js<cr>
map <leader>gs :CommandTFlush<cr>\|:CommandT Resources/public/css<cr>
map <leader>gt :CommandTFlush<cr>\|:CommandTTag<cr>
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>
"map <leader>gg :topleft 100 :split Gemfile<cr>

