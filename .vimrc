"Initialize
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

"Plugins initilize
if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

"unite,neomru install
NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/neomru.vim'

"nerdtree install
NeoBundle 'scrooloose/nerdtree'

"previm install
NeoBundle 'kannokanno/previm'

"vim-auto-save install
NeoBundle 'vim-scripts/vim-auto-save'

"jedi-vim install
NeoBundle 'davidhalter/jedi-vim'

call neobundle#end()

filetype plugin indent on

NeoBundleCheck

"Unite
let g:unite_enable_start_insert=1
noremap <C-L> :Unite -buffer-name=file file<CR>

"NERDTree
nnoremap <silent><C-F> :NERDTreeToggle<CR>
"C-F > View file list
"C-ww [on file list] > change screen
"t [on file list] > file open to tab
"T [on file list] > file open to tab but not tab changed
"gt [on file list] > change tab
"m [on file list] > file,dir operation
"i [on file list] > file open to horizontal
"gi [on file list] > file open to horizontal but not screen changed
"s [on file list] > file open to vertical
"gs [on file list] > file open to vertical but not screen changed
"C [on file list] > select directory for change destination root directory

"previm
let g:previm_open_cmd = 'open -a chrome'
augroup PrevimSettings
    autocmd!
    autocmd BufNewFile,BufRead *.{md,mdwn,mkd,mkdn,mark*} set filetype=markdown
augroup END
noremap <C-M> :PrevimOpen<CR>

"vim-auto-save
let g:auto_save = 0
noremap <C-W><C-A> :let g:auto_save = 1<CR>

"jedi-vim
let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 0
autocmd FileType python setlocal completeopt-=preview
let g:jedi#popup_select_first = 0
