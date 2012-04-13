" .vimrc
" Author: Ulrich Werner <ulrichwern@gmail.com>
" vim:fdm=marker

" Main
" Basic setup ------------------------------------------------------------------ {{{
set t_Co=256
colorscheme zenburn
syntax on
call pathogen#helptags()
call pathogen#infect()
filetype indent on
filetype plugin on
set ruler
let mapleader = ","
set bs=2  "make backspace work

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
set cursorline " highlight current line
set hlsearch   " highlight searches
set scrolloff=10 " allows me to see more text as im scrolling down

" remap <esc> to kj    
imap kj <ESC>
map <leader>w :w <CR>
set foldmethod=manual

set history=1000

" }}}
" Filetypes -------------------------------------------------------------------- {{{
au BufNewFile,BufRead *.twig set filetype=jinja
au BufNewFile,BufRead *.less set filetype=less
" }}}
" Extras ----------------------------------------------------------------------- {{{
" Quickly edit/reload the vimrc file
nmap  <leader>ev :vs $MYVIMRC<CR>
nmap  <leader>sv :so $MYVIMRC<CR>

" http://stackoverflow.com/q/526858
set wildmode=longest,list,full
set wildmenu

" press <F3> to toggle :set paste
set pastetoggle=<F3>


" Show syntax highlighting groups for word under cursor
nmap <C-S-I> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
" }}}
" Vimdiff ---------------------------------------------------------------------- {{{
" vimdiff color scheme
 highlight DiffChange cterm=none ctermfg=black ctermbg=LightGreen gui=none guifg=bg guibg=LightGreen
 highlight DiffText cterm=none ctermfg=black ctermbg=Red gui=none guifg=bg guibg=Red
" }}}
" Editing/Renaming Files ------------------------------------------------------- {{{
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
map <leader>r :call RenameFile()<cr>

" Move around splits with <c-hjkl>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
" }}}
" Status Line ------------------------------------------------------------------ {{{
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
"}}}  
" Folding ---------------------------------------------------------------------- {{{
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
nnoremap <leader>C zM
" delete fold at cursor
nnoremap <leader>d zd

" save and restore folds when a file is closed and re-opened
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
" }}}

" Plugins 
" NERDTree --------------------------------------------------------------------- {{{
map <F1> :NERDTreeToggle  <CR>
"map <F2> :NERDTreeFind <CR>
let NERDTreeShowBookmarks=1
let NERDTreeBookmarksFile= expand($HOME) . '/dotfiles/vim/.NERDTreeBookmarks'
let NERDTreeChDirMode=2

" Close vim if NERDTree is last open buffer
autocmd WinEnter * call s:CloseIfOnlyNerdTreeLeft()
function! s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction
"}}}
" miniBufExpl ------------------------------------------------------------------ {{{
let g:miniBufExplorerMoreThanOne = 2
"let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
" }}}
" Command-T -------------------------------------------------------------------- {{{
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
map <leader>gr :topleft :split Resources/config/routing.yml<cr>
map <leader>gR :call ShowRoutes()<cr>
map <leader>gv :CommandTFlush<cr>\|:CommandT Resources/views<cr>
map <leader>gc :CommandTFlush<cr>\|:CommandT Controller<cr>
map <leader>ge :CommandTFlush<cr>\|:CommandT Entity<cr>
map <leader>gE :CommandTFlush<cr>\|:CommandT Repository<cr>
map <leader>gj :CommandTFlush<cr>\|:CommandT Resources/public/js<cr>
map <leader>gs :CommandTFlush<cr>\|:CommandT Resources/public/css<cr>
map <leader>gt :CommandTFlush<cr>\|:CommandTTag<cr>
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>
" }}}
" Tagbar ----------------------------------------------------------------------- {{{
nnoremap <silent> <F9> :TagbarToggle<CR> 
"}}}
" Taskpaper -------------------------------------------------------------------- {{{
map <F2> :sp ~/dotfiles/vim/.tasks.taskpaper<cr>
let g:task_paper_date_format = "%Y-%m-%d %H:%M"
" }}}
" Syntastic -------------------------------------------------------------------- {{{
" passive mode lets me toggle syntastic on, instead of it being run on file save
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': [] }
" syntastic uses vim's location lists; use :lnext and :lprev to cycle through errors
nnoremap <leader>n :lnext <CR>
nnoremap <leader>m :lprev <CR>

nnoremap <leader>ss :SyntasticCheck <CR>
nnoremap <leader>st :SyntasticToggleMode<cr>\|:redraw!<cr>
nnoremap <leader>sE :Errors <cr>
" }}}
" Snipmate  -------------------------------------------------------------------- {{{
au BufRead,BufNewFile *.js set filetype=javascript
" }}}
" JsBeautify  ------------------------------------------------------------------ {{{
nnoremap <leader>ff :call g:Jsbeautify()<cr>
" }}}
" YankRing  ------------------------------------------------------------------ {{{
nnoremap <leader>y :YRShow <cr>
" }}}
" Clam  ------------------------------------------------------------------ {{{
nnoremap ! :Clam<space>
" }}}

" Testing & Linting
" PHP -------------------------------------------------------------------------- {{{
" Checks current file for php parser errors
" noremap <C-L> :!php -l %<CR>
" }}}
" Javascript ------------------------------------------------------------------- {{{
" so javascript indents after return
"  http://stackoverflow.com/a/5326852
"set nocindent smartindent
"}}}

" Vim Tips 
" Command-line mode ------------------------------------------------------------ {{{
" http://stackoverflow.com/a/1220118 : lots of good tips
" <C-R> <C-W> while in command-line mode inserts the text your cursor is currently over
" :let NERDTreeBookmarks  shows the name of the variable
" }}}
" All modes -------------------------------------------------------------------- {{{
" set ve=all : allow 'virtual editing', allowing cursor to be positioned where there is no actual character
" set ve=    : disallow 'virtual editing'; :help virtualedit for details
" :!r {some command} : executes a bash command and read the output into vim
" }}}
" Folding ---------------------------------------------------------------------- {{{
" zf#j creates a fold from the cursor down # lines.
" zf/string creates a fold from the cursor to string .
" zj moves the cursor to the next fold.
" zk moves the cursor to the previous fold.
" zo opens a fold at the cursor.
" zO opens all folds at the cursor.
" zm increases the foldlevel by one.
" zM closes all open folds.
" zr decreases the foldlevel by one.
" zR decreases the foldlevel to zero -- all folds will be open.
" zd deletes the fold at the cursor.
" zE deletes all folds.
" [z move to start of open fold.
" ]z move to end of open fold.
" }}}
" Current Filename ------------------------------------------------------------- {{{
" :echo expand("%:p")
" }}}
" Moving ------------------------------------------------------------- {{{
" ''   : move to previous position
" }}}
" 
