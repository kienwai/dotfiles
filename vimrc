"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=100 

" Use pathogen to easily modify the runtime path to include
" all plugins under the ~/.vim/bundle director
filetype off                    " force reloading *after* pathogen loaded
call pathogen#runtime_append_all_bundles() 
call pathogen#helptags()

filetype plugin on               " Enable filetype plugin
filetype indent on

set autoread                    " Auto read when file is changed from the outside

let mapleader = ","


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable                   "Enable syntax hl
colorscheme molokai

if has("gui_running")
    set guifont:AndaleMono:h11
    set guioptions=ace
    set fuoptions=maxvert,maxhorz
    set background=dark
    set transparency=3
    if has("gui_macvim")
        "macmenu &File.New\ Tab key=<D-T>
        map <silent> <leader>t <Plug>PeepOpen
        map <silent> <leader><leader> <C-w>v<C-w>l<Plug>PeepOpen
    end
endif  

set encoding=utf8


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree Plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeChDirMode=2
nmap <leader>n :NERDTreeClose<CR>:execute 'NERDTreeToggle "' . getcwd() . '"'<CR>
nmap <leader>m :NERDTreeClose<CR>:NERDTreeFind<CR>
nmap <leader>N :NERDTreeClose<CR>

autocmd VimEnter * NERDTreeToggle %:p:h
autocmd VimEnter * wincmd p