"Get the hostname
let hostname = substitute(system('hostname'), '\n', '', '')

"Force iMproved mode
set nocompatible

"Vundle requirement
filetype off

"OS specific stuff
if hostname == "Robin-PC"
  "Use windows bindings in windows
  source $VIMRUNTIME/vimrc_example.vim
  source $VIMRUNTIME/mswin.vim
  behave mswin

  "Maximises window
  au GUIEnter * simalt ~x

  "Vundle TODO check if it actually works
  set rtp+=$VIM/vimfiles/bundle/Vundle.vim
  call vundle#begin('$VIM/vimfiles/bundle')
elseif hostname == "robin-laptop"
  "Vundle
  set rtp+=$HOME/.vim/bundle/Vundle.vim
  call vundle#begin()
endif

"Syntax highlighting
filetype plugin on
syntax on

"{{{Vundle plugins
"Let Vundle handle itself
Plugin 'gmarik/Vundle.vim'

"Tabularize
Plugin 'godlygeek/tabular'

"Syntastic
Plugin 'scrooloose/syntastic'

"NerdTree
Plugin 'scrooloose/nerdtree'

"Easymotion
Plugin 'Lokaltog/vim-easymotion'

"TComment
Plugin 'tomtom/tcomment_vim'

"HLinkTrace
Plugin 'gerw/vim-HiLinkTrace'
"}}}

"End Vundle stuff
call vundle#end()
filetype plugin indent on

"Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_mode_map={'mode': 'passive'}
"let g:syntastic_check_on_open=1

"{{{ Set options
"Set default fileformat to unix
set fileformats=unix,dos

"To get rid of annoying backup files
set nobackup

"Remove annoying interface stuffz
"Menu bar
set guioptions-=m
"Toolbar
set guioptions-=T
"Right scrollbar
set guioptions-=r
"Left scrollbar
set guioptions-=L

"Line numbering
set relativenumber
set number

"Allow hidden (background) buffers
set hidden

"Wrap long lines...
set wrap
"...without inserting automatic line breaks
set linebreak
set nolist
set textwidth=0
set wrapmargin=0

"Set size of tabs
set tabstop=2

"Set size of an indent
set shiftwidth=2

"Make tab insert indents instead of tabs
set smarttab

"Replace tabs with spaces
set expandtab

"Set fold mode to marker
set fdm=marker

"Do not redraw when running macros
set lazyredraw

"Cursor marking
set cursorline cursorcolumn

"Setting g flag for serach and replace as default
set gdefault

"Make sure hlsearch is on
set hlsearch

"Leave a few lines when scrolling
set scrolloff=3

"Semi-case-insesitive search
set ignorecase
set smartcase

"Show search matches while typing
set incsearch

"Can move outside text in visual block mode
set virtualedit=block

"Make split put new window 'after' current
set splitbelow
set splitright

"Show autocompletion options
set wildmenu
"}}}

"{{{ Colour and highlighting options
"Colour of cursor marking
highlight CursorLine guibg=#555555
highlight CursorColumn guibg=#AAAAAA

"System dependent colour settings
if hostname == "robin-laptop"
"High contrast color scheme for laptop
  colorscheme pablo

  "Automatically higlight TODO tag
  augroup HiglightTODO
    autocmd!
    autocmd WinEnter,VimEnter * :silent! call matchadd('Error', 'TODO', -1)
  augroup END

  "Fixing line higlighting in terminal
  highlight CursorLine cterm=NONE ctermbg=59
elseif hostname == "Robin-PC"
"Normal colourscheme for PC
  colorscheme newtheme
endif

"Highlight long lines after column 80
match Error /\%81v.\+/

"Hightlight trailing spaces
augroup trailing
  au!
  au InsertEnter * :match none /\s\+$/
  au InsertLeave * :match Error /\s\+$/
augroup END
"}}}

"{{{ Mappings
"Unbind f1
map <f1> <nop>
imap <f1> <Esc>

"Reload source
nnoremap <f5> :so $MYVIMRC<cr>

"Syntax check
nnoremap <f10> :w<cr>:SyntasticCheck<cr>

"Quick Tabularize command
nnoremap <Leader>tb :Tabularize assignment<cr>

"Quick highlight remover
nnoremap <space> :nohlsearch<cr>

"Remapping enter key to move line down
nnoremap <cr> I<cr><Esc>

"Easy navigation between tabs
map <C-J> <C-W>j<C-W><Esc>
map <C-K> <C-W>k<C-W><Esc>
map <C-H> <C-W>h<C-W><Esc>
map <C-L> <C-W>l<C-W><Esc>

"Self-explanatory
map <C-n> :NERDTreeToggle<CR>

"Quick buffer navigation
map <Leader>n :bn<cr>
map <Leader>d :bd<cr>

"Navigate wrapped lines
nnoremap j gj
nnoremap k gk

"Unbind help shortcut
nnoremap <S-K> <Nop>

"Yank rest of line
nnoremap <S-Y> <S-D>u

"Selects a block
nnoremap <Leader>b {<S-V>}k

"Sorts a block
nmap <Leader>s <Leader>b:sort<cr>

"Easymotion shortcut
nmap <Leader>w <Plug>(easymotion-bd-w)

"TComment shortcut
nmap <Leader>c <c-_><c-_>
vmap <Leader>c <c-_><c-_>

"Unbind ex mode shortcut
nmap <S-Q> <Nop>
"}}}

