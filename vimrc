" vim: set foldmarker={,} foldlevel=1 foldmethod=marker
" .vimrc
" Author: Ulrich Werner <ulrichwern@gmail.com>

" Main
" Vundle  ------------------------------------------------------------------ {"{
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" My Bundles
Bundle 'vim-snippets.ulius'
Bundle 'powerline'
" Github bundles
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'sjl/clam.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'honza/snipmate-snippets'
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'ervandew/supertab'
Bundle 'vim-scripts/tComment'
Bundle 'tomtom/tlib_vim'
Bundle 'tpope/vim-fugitive'
Bundle 'garbas/vim-snipmate.git'
Bundle 'tsaleh/vim-matchit'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mileszs/ack.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'briancollins/vim-jst'
Bundle 'pangloss/vim-javascript'
Bundle 'nono/vim-handlebars'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'walm/jshint.vim'
Bundle 'benmills/vimux'
Bundle 'pgr0ss/vimux-ruby-test'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'jnwhiteh/vim-golang'
Bundle 'majutsushi/tagbar'

" }"}
" Basic setup ------------------------------------------------------------------ {
set t_Co=256
syntax on
colorscheme zenburn
filetype indent on
filetype plugin on
set ruler
let mapleader = ","
let maplocalleader = "\\"
set bs=2  "make backspace work

"searching/moving
set ignorecase
set smartcase
nnoremap <leader><space> :noh<cr>

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set hidden
" set cursorline " highlight current line
set hlsearch   " highlight searches
set scrolloff=10 " allows me to see more text as im scrolling down
set nu

" resize windows left and right
nnoremap <silent> <Left> :vertical resize +5 <cr>
nnoremap <silent> <Right> :vertical resize -5 <cr>
nnoremap <silent> <Up> :resize +5 <cr>
nnoremap <silent> <Down> :resize -5 <cr>


" remap <esc> to kj    
imap kj <ESC>
" Saving
map <leader>1 :w <CR> 
map <leader>3 :wq <CR>
map <leader>% :q! <CR>

set foldmethod=manual

set history=10000
" set textwidth=80

" }
" Filetypes -------------------------------------------------------------------- {
au BufNewFile,BufRead *.twig set filetype=jinja
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.ejs set filetype=jst
let g:ruby_path = '/usr/local/bin/ruby'
"for ruby, autoindent with two spaces, always expand tabs
au FileType ruby,haml,eruby,sass,cucumber,erb set ai sw=2 sts=2 et nocursorline 
au FileType sql set ai sw=2 sts=2 et nocursorline 
au FileType coffee set ai sw=2 sts=2 et nocursorline 
au FileType javascript set ai sw=2 sts=2 et nocursorline 
au BufNewFile,BufRead Gemfile set filetype=ruby
" }
" Extras ----------------------------------------------------------------------- {
" Quickly edit/reload the vimrc file
nmap  <leader>ev :vs $MYVIMRC<CR>
nmap  <leader>sv :so $MYVIMRC<CR>
" edit personal snipmate snippets
nmap  <leader>eS :NERDTree ~/dotfiles/vim/bundle/vim-snippets.ulius/snippets <CR>

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

" }
" Vimdiff ---------------------------------------------------------------------- {
" vimdiff color scheme
 highlight DiffChange cterm=none ctermfg=black ctermbg=LightGreen gui=none guifg=bg guibg=LightGreen
 highlight DiffText cterm=none ctermfg=black ctermbg=Red gui=none guifg=bg guibg=Red
" }
" change zenburn line number bg color
highlight LineNr ctermbg=237
" }
" Editing/Renaming Files ------------------------------------------------------- {
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
" }
" Status Line ------------------------------------------------------------------ {
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
" Folding ---------------------------------------------------------------------- {
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
nnoremap <leader>v $zf%


" save and restore folds when a file is closed and re-opened
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 
" }
" Custom Mappings -------------------------------------------------------------- {
" Kill window
" Uppercase entire word
imap <c-u> <esc>viwUea
" Show current file path with command
command! CurrentFilePath :echo expand('%:p')
" Give me emacs/readline in command mode
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>
cnoremap <C-b> <Left>
cnoremap <C-f> <Right>
cnoremap <C-d> <Del>
" these are alt+b and alt+f. I used insert mode and ctrl+v to find out 
" what my terminal was sending vim:
cnoremap b <C-Left>
cnoremap f <C-Right>
"
" }
" Backups  -------------------------------------------------------------------- {
" taken from steve losh: https://github.com/sjl/dotfiles/blob/master/vim/vimrc
set undodir=~/.vim/tmp/undo/     " undo files
set backupdir=~/.vim/tmp/backup/ " backups
set directory=~/.vim/tmp/swap/   " swap files
set backup                        " enable backups
set noswapfile                    " It's 2012, Vim.
" }
" Completion " -------------------------------------------------------------------- {
" inoremap <c-f> <c-x><c-o>
" }
" Easy filetype switching {
nnoremap _j :set ft=javascript<CR>
nnoremap _c :set ft=coffee<CR>
nnoremap _ht :set ft=html<CR>
nnoremap _le :set ft=markdown<CR>
nnoremap _d  :set ft=diff<CR>
nnoremap _r  :set ft=ruby<CR>
" " }
" Auto groups {
augroup project_rails
    autocmd!
    au FileType ruby,eruby call RailsShortcuts()
augroup END

augroup project_symfony2
    autocmd!
    au FileType php call Symfony2Shortcuts()
augroup END
" " }

" Plugins 
" NERDTree --------------------------------------------------------------------- {
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
"}
" miniBufExpl ------------------------------------------------------------------ {
let g:miniBufExplorerMoreThanOne = 2
"let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 
" }
" Command-T -------------------------------------------------------------------- {
function! Symfony2Routes()
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

function! RailsRoutes()
  " Requires 'scratch' plugin
  :topleft 50 :split __Routes__
  " Make sure Vim doesn't write __Routes__ as a file
  :set buftype=nofile
  " Delete everything
  :normal 1GdG
  " Put routes output in buffer
  :0r! rake routes
  " Size window to number of lines (1 plus rake output length)
  :execute ":normal " . line("$") . "_ "
  " Move cursor to bottom
  :normal 1GG
  " Delete empty trailing line
  :normal dd
endfunction

    map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
    map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>

function! Symfony2Shortcuts()
    map <leader>gr :topleft :split Resources/config/routing.yml<cr>
    map <leader>gR :call Symfony2Routes()<cr>
    map <leader>gv :CommandTFlush<cr>\|:CommandT Resources/views<cr>
    map <leader>gc :CommandTFlush<cr>\|:CommandT Controller<cr>
    map <leader>ge :CommandTFlush<cr>\|:CommandT Entity<cr>
    map <leader>gE :CommandTFlush<cr>\|:CommandT Repository<cr>
    map <leader>gj :CommandTFlush<cr>\|:CommandT Resources/public/js<cr>
    map <leader>gjt :CommandTFlush<cr>\|:CommandT Resources/jst<cr>
    map <leader>gs :CommandTFlush<cr>\|:CommandT Resources/public/css<cr>
    map <leader>gt :CommandTFlush<cr>\|:CommandT Tests<cr>
    map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
    map <leader>F :CommandTFlush<cr>\|:CommandT %%<cr>
endfunction

function! RailsShortcuts()
    map <leader>gr :vertical :split config/routes.rb <cr>
    map <leader>gR :call RailsRoutes()<cr>
    map <leader>gv :CtrlP app/views<cr>
    map <leader>gh :CtrlP app/helpers<cr>
    map <leader>gc :CtrlP app/controllers<cr>
    map <leader>gm :CtrlP app/models<cr>
    map <leader>gS :CtrlP app/services<cr>
    map <leader>gj :CtrlP app/assets/javascripts<cr>
    map <leader>gs :CtrlP app/assets/stylesheets<cr>
    map <leader>gt :CtrlP spec/<cr>
    map <leader>gf :CtrlP spec/factories<cr>
    map <leader>gd :sp db/structure.sql<cr>
    map <leader>gD :sp db/schema.rb<cr>
    map <leader>f :CtrlP <cr>
    map <leader>F :CtrlP  %%<cr>

    let g:vimux_ruby_cmd_unit_test = "zeus rspec"
    let g:vimux_ruby_cmd_all_tests = "zeus rspec"
    let g:vimux_ruby_cmd_context = "zeus rspec"
    map <leader>t :RunRubyFocusedTest <cr>
    map <leader>y :RunRubyFocusedContext <cr>
    map <leader>T :RunAllRubyTests <cr>
    map <leader>s :vertical :split db/schema.rb <cr>
endfunction

" }
" Tagbar ----------------------------------------------------------------------- {
" nnoremap <silent> <F9> :TagbarToggle<CR> 
"}
" Taskpaper -------------------------------------------------------------------- {
map <F2> :sp ~/dotfiles/vim/.tasks.taskpaper<cr>
let g:task_paper_date_format = "%Y-%m-%d %H:%M"
" }
" Syntastic -------------------------------------------------------------------- {
" passive mode lets me toggle syntastic on, instead of it being run on file save
let g:syntastic_mode_map = { 'mode': 'passive', 'active_filetypes': [], 'passive_filetypes': [] }
" syntastic uses vim's location lists; use :lnext and :lprev to cycle through errors
nnoremap <leader>n :lnext <CR>
nnoremap <leader>m :lprev <CR>

nnoremap <leader>ss :SyntasticCheck <CR>
nnoremap <leader>st :SyntasticToggleMode<cr>\|:redraw!<cr>
nnoremap <leader>sE :Errors <cr>
" }
" Snipmate  -------------------------------------------------------------------- {
au BufRead,BufNewFile *.js set filetype=javascript
" }
" JsBeautify  ------------------------------------------------------------------ {
nnoremap <leader>ff :call g:Jsbeautify()<cr>
" }
" Tabular  ------------------------------------------------------------------ {
nmap <leader>z: :Tab /:\zs <cr>
nmap <leader>z= :Tab /= <cr>
nmap <leader>z=> :Tab /=> <cr>
" }
" Clam  ------------------------------------------------------------------ {
nnoremap ! :Clam<space>
vnoremap ! :ClamVisual<space>
let g:clam_autoreturn = 1
let g:clam_debug = 1
" }
" Taglist  ------------------------------------------------------------------ {
" http://lucasoman.blogspot.com/2010/09/vim-php-taglist-and-ctags.html
" }
" Powerline  ------------------------------------------------------------------ {
let g:Powerline_symbols = 'fancy'
" }
" Ack  ------------------------------------------------------------------ {
map <leader>a :Ack 
" }
" Vimux  ------------------------------------------------------------------ {
" Necessary to avoid this: https://github.com/benmills/vimux/issues/14
ruby << EOF
class Object
  def flush; end unless Object.new.respond_to?(:flush)
end
EOF
let g:VimuxOrientation = "v"
" }

" Testing & Linting
" PHP -------------------------------------------------------------------------- {
" Checks current file for php parser errors
" noremap <C-L> :!php -l %<CR>
map <leader>q :w \| :Clam ruby % <CR>
" }
" Javascript ------------------------------------------------------------------- {
set nocindent smartindent
"}

" Vim Tips 
" Command-line mode ------------------------------------------------------------ {
" http://stackoverflow.com/a/1220118 : lots of good tips
" <C-R> <C-W> while in command-line mode inserts the text your cursor is currently over
" :let NERDTreeBookmarks  shows the name of the variable
" }
" Normal mode ------------------------------------------------------------ {
" <g-a> shows decimal, hex, and octal values of character cursor is on
" }
" All modes -------------------------------------------------------------------- {
" set ve=all : allow 'virtual editing', allowing cursor to be positioned where there is no actual character
" set ve=    : disallow 'virtual editing'; :help virtualedit for details
" :!r {some command} : executes a bash command and read the output into vim
" }
" Folding ---------------------------------------------------------------------- {
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
" ==============
" zfit fold an html node
" }
" Current Filename ------------------------------------------------------------- {
" :echo expand("%:p")
" }
" Book about Vimscript ------------------------------------------------------------- {
" http://learnvimscriptthehardway.stevelosh.com/chapters/21.html
" }
" so javascript indents after return
"  http://stackoverflow.com/a/5326852
" set nocindent smartindent
" Moving ------------------------------------------------------------- {
" ''   : move to previous position
" }
" Random ------------------------------------------------------------- {
" Run cmd line after every save:
" :autocmd BufWritePost * !run_tests.sh <afile>
" }
" Tabs ------------------------------------------------------------- {
" To show the last file that set variables, for example:
" :verbose set tabstop sw softtabstop expandtab ?
" 
" To see what your terminal is sending when you press a key, switch to insert
" mode, press Ctrl+V, then the key
" http://unix.stackexchange.com/a/14790
" }
" TODO ------------------------------------------------------------- {
" http://technotales.wordpress.com/2011/04/15/coffeescript-vim-and-pathogen/
" }
" 
"If there's a .vimlocal file automatically source it
function! SourceVimLocal()
    if filereadable(".vimlocal")
        source .vimlocal
    endif
endfunction
call SourceVimLocal()

let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_max_height = '40'
