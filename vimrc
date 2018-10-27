call plug#begin('~/.vim/plugged')
    Plug 'airblade/vim-gitgutter'
    Plug 'fatih/vim-go'
        let g:go_highlight_functions = 1
        let g:go_highlight_methods = 1
        let g:go_highlight_fields = 1
        let g:go_highlight_types = 1
        let g:go_fmt_command = "goimports"
        let g:go_fmt_autosave = 1
        let g:go_snippet_case_type = "camelcase"
        let g:go_metalinter_autosave = 1
        let g:go_metalinter_autosave_enabled = ['vet', 'golint', 'errcheck', 'varcheck']
        let g:go_metalinter_enabled = ['vet', 'golint', 'errcheck', 'varcheck', 'aligncheck', 'ineffassign', 'gosimple', 'staticcheck']
        let g:go_metalinter_deadline = '10s'
    Plug 'luochen1990/rainbow'
        let g:rainbow_active = 1
    Plug 'tpope/vim-fugitive'
        autocmd QuickFixCmdPost *grep* cwindow
    Plug 'vim-airline/vim-airline'
    Plug 'Yggdroot/LeaderF', { 'do': './install.sh' }
    Plug 'junegunn/seoul256.vim'
    Plug 'chriskempson/base16-vim'
        let base16colorspace=256
    Plug 'ekalinin/Dockerfile.vim'
    Plug 'pearofducks/ansible-vim'
    Plug 'w0rp/ale'
        let g:ale_fixers = {'python': ['black']}
        let g:ale_fix_on_save = 0
    Plug 'wannesm/wmgraphviz.vim'
call plug#end()
set nocompatible
let mapleader = ","
syntax enable
set background=dark
let g:remoteSession = ($STY == "")
if g:remoteSession
    colorscheme seoul256
else
    colorscheme base16-default-dark
endif


noremap ; :
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l
noremap <c-Left> <c-w>h
noremap <c-Down> <c-w>j
noremap <c-Right> <c-w>l
noremap <c-Up> <c-w>k
noremap <leader>kf gg=G``zz
noremap <leader>kw :%s/\s\+$//<cr>
noremap <leader>m <c-w><right>
noremap <leader>n <c-w><left>
noremap <leader>v <c-w><c-v>
noremap <space> *Nzz
noremap <leader>s :!sort<cr>

vnoremap < <gv
vnoremap > >gv

"set autochdir
set autoindent
set cursorcolumn
set cursorline
set dir=/var/tmp
set expandtab
set hlsearch
set ignorecase
set laststatus=2
set listchars=tab:▸\ ,eol:¶,extends:❯,precedes:❮,trail:·
set list
set path+=**
set shiftwidth=4
set nowrap
set nowrapscan
set number
set smartcase
set swapfile
set tabstop=4
set softtabstop=4
set smartindent
set t_Co=256
set tabstop=4
"set textwidth=80
set wildmenu
set wildmode=list:longest,full

" highlight bad whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
" Only match longer lines
highlight ColorColumn ctermbg=magenta
call matchadd('ColorColumn', '\%81v', 100)

au FileType go nmap <leader>gr <Plug>(go-run)
au FileType go nmap <leader>gb <Plug>(go-build)
au FileType go nmap <leader>gt <Plug>(go-test)
au BufNewFile,BufRead *.go setlocal noexpandtab tabstop=4 shiftwidth=4
au BufNewFile,BufRead *.ebuild setlocal noexpandtab tabstop=4 shiftwidth=4
au BufNewFile,BufRead Dockerfile.* setlocal syntax=dockerfile
au FileType gitcommit set tw=70 spell
au FileType make set ts=8
