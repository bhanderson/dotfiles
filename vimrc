"set nocompatible
" Set up Vundle
"let iCanHazVundle=1
"let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
"if !filereadable(vundle_readme)
"	echo "installing Vundle.."
"	echo ""
"	silent !mkdir -p ~/.vim/bundle
"	silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
"	let iCanHazVundle=0
"endif
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
"if iCanHazVundle == 0
"	echo "Installing Bundles, please ignore key map error messages"
"	echo ""
"	:BundleInstall
"endif

" Bundles
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
set encoding=utf-8
set fileformat=unix
set foldmethod=manual
set history=50
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·,nbsp:‿
set list
set mouse=a
set nobackup
set noerrorbells
set noswapfile
set number
set scrolloff=5
set shiftwidth=4 		" 
set showcmd
set showmatch 
set sidescroll=1
set sidescrolloff=10
set shell=bash
set smartcase			" ignore case if search is all lowercase else case sensitive
set smarttab
set tabstop=4 			" tab = 4 spaces
set tags=tags;/
set t_Co=256
set textwidth=80
set title
set visualbell
set wildmode=full
set nowrap
let mapleader = ","
let maplocalleader = "\\"
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
syntax on
"set background=dark
colorscheme molokai
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)
highlight BadWhitespace ctermbg=0 guibg=red

" Display tabs at the beginning of a line in Python mode as bad.
au BufRead,BufNewFile *.py,*.pyw match BadWhitespace /^\t\+/
" Make trailing whitespace be flagged as bad.
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h,*.cpp match BadWhitespace /\s\+$/

au BufWinEnter * silent! loadview
au BufWinLeave * silent! mkview
au BufWritePost .vimrc so ~/.vimrc "reload .vimrc on every save
au FocusLost * :wa
au Syntax * RainbowParenthesesLoadBraces
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au VimEnter * RainbowParenthesesToggle
au VimResized * exe "normal! \<c-w>="
command! -bang E e<bang>
command! -bang Qa qa<bang>
command! -bang QA qa<bang>
command! -bang Q q<bang>
command! -bang Wa wa<bang>
command! -bang WA wa<bang>
command! -bang Wq wq<bang>
command! -bang WQ wq<bang>
command! -bang W w<bang>
iabbrev (c) ©
iabbrev ldis ಠ_ಠ
iabbrev lhap ಥ‿ಥ
iabbrev lmis ಠ‿ಠ
iabbrev lsad ಥ_ಥ
iabbrev (r) ®
iabbrev tflip (╯°□°）╯︵ ┻━┻)
iabbrev (tm) ™
inoremap {{ {
inoremap {} {}
inoremap {<CR> {<CR>}<Esc>O
inoremap { {}<Left>
map <c-o> :NERDTreeToggle<cr>
map <f1> <esc>
nmap <f3> :set hlsearch!<cr>
nmap <f6> :YcmDiags<cr>
nmap <f7> :set spell!<cr>
nmap <f8> :TagbarToggle<cr>
map <leader>{ A /*{{{*/<esc>
map <leader>} A /*}}}*/<esc>
map <leader>d :w ~diff % -<cr>		"Show diff of file
map <leader>kf gg=G``zz
map <leader>kw :%s/\s\+$//<cr>
map <leader>m <c-w><right>
map <leader>n <c-w><left>
map <leader><tab> :Sscratch<cr>
map <leader>v <c-w><c-v>
map <leader>w <c-w><c-w>
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <space> *N
nnoremap <leader>! :!
nnoremap <leader>q :mksession! ~/Session.vim<CR>:qa<CR>
nnoremap <leader>s vip:!sort<cr>
nnoremap m k
nnoremap / /\v
noremap j gj
noremap k gk
nnoremap ; :
vnoremap < <gv
vnoremap > >gv
vnoremap <leader>s :!sort<cr>
vnoremap <Leader>za <Esc>`<kzfgg`>jzfG`<
vnoremap / /\v
" ISILON stuff

"source ~/.vim/cscope_maps.vim

filetype plugin on
filetype indent on
" set tags to search parent directory till a tags file is found

