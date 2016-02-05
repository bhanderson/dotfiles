" Begin plug plugin
call plug#begin('~/.vim/plugged')
" On-demand loading
Plug 'bling/vim-airline'
Plug 'majutsushi/tagbar'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'luochen1990/rainbow'
Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'rust-lang/rust.vim'
Plug 'davidhalter/jedi-vim'
call plug#end()
" End plug plugin
set encoding=utf-8
set fileencodings=utf-8

au BufRead,BufNewFile *.log set filetype=messages
set syntax=on
set background=dark
colorscheme seoul256
filetype plugin indent on
highlight ColorColumn ctermbg=black guibg=Black
let mapleader = ","
let g:rainbow_active = 1
let g:gitgutter_enabled = 0
let g:jedi#usages_command = "<leader>u"
map <leader>w :AirlineToggleWhitespace<CR>
map ; :
map <C-o> :NERDTreeToggle<CR>
map <f3> :set hlsearch!<cr>
map <f5> :tabp<cr>
map <f6> :tabn<cr>
map <f7> :tabnew<cr>
map <F9> :TagbarToggle<CR>
map <f10> :setlocal spell! spelllang=en_us<CR>
map < <gv
map > >gv
map <leader>b :TagbarToggle<cr>
map <leader>g :GitGutterToggle<cr>
map <leader>kf gg=G``zz
map <leader>kw :%s/\s\+$//<cr>
map <leader>m <c-w><right>
map <leader>n <c-w><left>
map <leader>s :!sort<cr>
"map <leader>f :cs find s
map <leader>v <c-w><c-v>
map <space> *Nzz
command W :execute ':silent w !sudo tee % > /dev/null'
set autochdir
set autoindent
set cc=81
set cursorline
set foldmethod=manual
set foldnestmax=2
set hlsearch
set smartcase
set ignorecase
set incsearch
set laststatus=2
set list
set listchars=tab:▸\ ,eol:¬,extends:❯,precedes:❮,trail:·
set mouse=a
set nocompatible
set nowrap
set nowrapscan
set swapfile
set dir=/var/tmp
set number
set tabstop=4
set shiftwidth=4
set expandtab
set t_Co=256
set tags=/source/tags
set textwidth=80
set wildmode=longest,list,full
set wildmenu

if has('cscope')
	cscope add /source/cscope.out /source
"	nmap <C-@><C-@> :cs find s <C-R>=expand("<cword>")<CR><CR>
"	nmap <C-]> :cs find g <C-R>=expand("<cword>")<CR><CR>
	nmap <C-\> :cs find c <C-R>=expand("<cword>")<CR><CR>
endif

" Highlight bad whitespace when not in insert as red
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
