" Set up Plugins
source ~/git/dotfiles/plugins.vim
" Set up sets
source ~/git/dotfiles/set.vim
" Set up colors
source ~/git/dotfiles/color.vim
" Set up maps
source ~/git/dotfiles/maps.vim

autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

augroup reload_vimrc
    autocmd!
    autocmd bufwritepost $MYVIMRC nested source $MYVIMRC
augroup END

augroup fdm
    autocmd!
    autocmd FileType python     setlocal foldmethod=indent
augroup END

"cscope add ~/git/cscope.out ~/git
