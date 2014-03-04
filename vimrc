set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" Bundles
Bundle 'gmarik/vundle'
Bundle 'kien/rainbow_parentheses.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'mrtazz/molokai.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'vim-scripts/scratch.vim'
Bundle 'tpope/vim-abolish'
Bundle 'vim-scripts/Wombat'
Bundle 'flazz/vim-colorschemes'
Bundle 'majutsushi/tagbar'
Bundle 'Raimondi/delimitMate'
"Bundle 'scrooloose/syntastic'
Bundle 'wincent/Command-T'



" common sets
"set guifont=Inconsolata\ 11
set autochdir
set autoindent 			" set vim to autoindent after newline
set clipboard=unnamed	" set the clipboard to linux
set copyindent			" copy previous indentation on autoindenting
set encoding=utf-8		" use utf-8 as the encoding
set fileformat=unix		" use unix style line endings
set foldmethod=manual	" I will say where to fold
set history=50			" keep 50 commands in history"
set hlsearch			" highlight search values"
set smartcase			" ignore case if search is all lowercase else case sensitive
set incsearch			" find all search critera
set laststatus=2		" use two lines for command
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·,nbsp:‿ " show these hidden characters
set list				" show the characters above
set mouse=a				" enable mouse input
set nobackup			" do not use a backup file
set noerrorbells		" dont ding at me
set noswapfile			" dont use a swap file
set number				" show me the line numbers
set scrolloff=5			" if I get within 5 lines of top or bottom scroll for me
set showcmd				" show partial commands
set showmatch			" show matching braces
set sidescroll=1		" minimal number of colums to scroll
set sidescrolloff=10	" same as scrolloff but left and right
set shell=bash			" use bash for in vim shell
set smarttab			" see help smarttab
set tabstop=4 			" tab = 4 spaces
set tags=./tags;		" search upward of current file directory for ctags
set t_Co=256			" use 256 colors"
set textwidth=80		" lines are 80 characters long
set title				" set the title to the filename
set visualbell			" flash the screen if a bell is supposed to sound
set wildmode=full		" see help"
set nowrap				" dont wrap text in the window
let mapleader = ","		" set comma to leader
let maplocalleader = "\\" " keep backslash as a localleader
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py' " compilation flags for ycm
syntax on				" show syntax highlighting
"set background=dark
colorscheme molokai		" personal favorite colorscheme

" next 2 lines are for highlighting the 80th charachter of a line magenta
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
" show me bad whitespace so I can remove it
highlight BadWhitespace ctermbg=0 guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.cpp match BadWhitespace /\s\+$/

au BufWinEnter * silent! loadview
au BufWinLeave * silent! mkview
au BufWritePost .vimrc so ~/.vimrc "reload .vimrc on every save
au FocusLost * :wa		" if the window loses focus save all
" show braces round square and turn on rainbow parenthsesis
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au VimEnter * RainbowParenthesesToggle
" if the vim window is resized even out all splits
au VimResized * exe "normal! \<c-w>="
" make capital commands force
command! -bang E e<bang>
command! -bang Qa qa<bang>
command! -bang QA qa<bang>
command! -bang Q q<bang>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>
command! -bang W w<bang>
" random helpful mappings
iabbrev (c) ©
iabbrev ldis ಠ_ಠ
iabbrev lhap ಥ‿ಥ
iabbrev lmis ಠ‿ಠ
iabbrev lsad ಥ_ಥ
iabbrev (r) ®
" if im angry at code
iabbrev tflip (╯°□°）╯︵ ┻━┻)
iabbrev (tm) ™
" bracket completions
inoremap {{ {
inoremap {} {}
inoremap {<CR> {<CR>}<Esc>O
inoremap { {}<Left>
" open up filebrowser in vim
map <c-o> :NERDTreeToggle<cr>
" fat fingers dont need help
map <f1> <esc>
" toggle search highlight
nmap <f3> :set hlsearch!<cr>
" quick compile and show me errors and warnings
nmap <f6> :YcmDiags<cr>
" turn vim spellcheck on
nmap <f7> :set spell!<cr>
" show me functions and structs
nmap <f8> :TagbarToggle<cr>
" unused fold mappings
map <leader>{ A /*{{{*/<esc>
map <leader>} A /*}}}*/<esc>
"Show diff of file
map <leader>d :w ~diff % -<cr>
" align code like it should be, could be dangerous for python however
map <leader>kf gg=G``zz
" remove bad whitespace in whole file, result of kcw
map <leader>kw :%s/\s\+$//<cr>
" move to split right
map <leader>m <c-w><right>
" move to split left
map <leader>n <c-w><left>
" open up a quick scratch split
map <leader><tab> :Sscratch<cr>
" create a verticle split
map <leader>v <c-w><c-v>
" move to next split
map <leader>w <c-w><c-w>
" move split direction
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
" highlight current word
map <space> *N
nnoremap <leader>! :!
" save the session im in 
nnoremap <leader>q :mksession! ~/Session.vim<CR>:qa<CR>
nnoremap / /\v
" useful when wrapping lines
noremap j gj
noremap k gk
" shift colon is too hard semicolon is easier
nnoremap ; :
" reselect selection after shift left and right
vnoremap < <gv
vnoremap > >gv
" sort the lines selected
vnoremap <leader>s :!sort<cr>
" close all other folds besides this one
vnoremap <Leader>za <Esc>`<kzfgg`>jzfG`<
vnoremap / /\v
filetype plugin on
filetype indent on
