let startify_custom_header = [
    \'                                                                                       ',
  \'      ██████╗ ██╗ ██████╗ ███████╗ ██████╗ ██╗     ██╗         ██╗   ██╗██╗███╗   ███╗',
  \'     ██╔════╝ ██║██╔════╝ ██╔════╝██╔═══██╗██║     ██║         ██║   ██║██║████╗ ████║',
  \'     ██║  ███╗██║██║  ███╗███████╗██║   ██║██║     ██║         ██║   ██║██║██╔████╔██║',
  \'     ██║   ██║██║██║   ██║╚════██║██║   ██║██║     ██║         ╚██╗ ██╔╝██║██║╚██╔╝██║',
  \'     ╚██████╔╝██║╚██████╔╝███████║╚██████╔╝███████╗███████╗     ╚████╔╝ ██║██║ ╚═╝ ██║',
  \'      ╚═════╝ ╚═╝ ╚═════╝ ╚══════╝ ╚═════╝ ╚══════╝╚══════╝      ╚═══╝  ╚═╝╚═╝     ╚═╝',
  \]



call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'arcticicestudio/nord-vim'
Plug 'vim-airline/vim-airline'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'mhinz/vim-startify'
Plug 'ap/vim-css-color'
Plug 'suan/vim-instant-markdown', {'rtp': 'after'} 
Plug 'frazrepo/vim-rainbow'
Plug 'ryanoasis/vim-devicons' 
Plug 'vimwiki/vimwiki' 
Plug 'PotatoesMaster/i3-vim-syntax'
Plug 'vim-python/python-syntax'
Plug 'junegunn/vim-emoji'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

call plug#end()

let g:startify_left_padding = 80

let g:startify_bookmarks = [
        \ {'f': '~/.config/fish/config.fish'},
      \ {'i': '~/.config/i3/config'},
      \ {'v': '~/.vimrc'},
      \ {'p': '~/.config/polybar/config.ini'},
      \ {'c': '~/.config/picom.conf'},
      \]


let g:startify_lists = [
        \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
      \]

filetype plugin on
let NERDTreeShowHidden=1
highlight clear LineNr
set relativenumber 
set nu
colo nord
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

