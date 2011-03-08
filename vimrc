colorscheme blackboard
set guifont=Monaco:h12
set linespace=2
set number
set guioptions-=T

" enable pathogen
" http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

imap <C-Space> <Esc>

" Source the vimrc file after saving it
" http://vimcasts.org/episodes/updating-your-vimrc-file-on-the-fly/
if has("autocmd")
  autocmd bufwritepost vimrc source $MYVIMRC
endif