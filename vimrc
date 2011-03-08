" enable pathogen
" http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

colorscheme blackboard
set guifont=Monaco:h12
set linespace=2
set number
set guioptions-=T

imap <C-Space> <Esc>

let mapleader = ","
" show invisibles http://vimcasts.org/episodes/show-invisibles/
nmap <silent> <leader>l :set list!<CR> 
" quick edit .vimrc
nmap <leader>v :e ~/.vim/vimrc<CR>

set showcmd

" Source the vimrc file after saving it
" http://vimcasts.org/episodes/updating-your-vimrc-file-on-the-fly/
if has("autocmd")
  augroup myvimrchooks
    au!
    autocmd bufwritepost vimrc source ~/.vimrc
  augroup END
endif

filetype plugin on
