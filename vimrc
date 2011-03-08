" enable pathogen
" http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

colorscheme sunburst
set guifont=Monaco:h12
set linespace=2
set number
set guioptions-=T
set hlsearch

" Whitespace stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set listchars=tab:▸\ ,eol:¬,trail:·

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

" Show syntax highlighting groups for word under cursor
" http://vimcasts.org/episodes/creating-colorschemes-for-vim/
nmap <C-S-P> :call <SID>SynStack()<CR>
function! <SID>SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunc
