"Get the hostname
let hostname = substitute(system('hostname'), '\n', '', '')
let homepc = "Robin-PC"
let laptop = "robin-laptop"

"Force iMproved mode
set nocompatible

"Vundle requirement
filetype off

"OS specific stuff
if hostname == homepc
  "Use windows bindings in windows
  source $VIMRUNTIME/vimrc_example.vim
  source $VIMRUNTIME/mswin.vim
  behave mswin

  "Maximises window
  au GUIEnter * simalt ~x

  "Vundle init
  set rtp+=$VIM/vimfiles/bundle/Vundle.vim
  call vundle#begin('$VIM/vimfiles/bundle')
elseif hostname == laptop
  "Vundle
  set rtp+=$HOME/.vim/bundle/Vundle.vim
  call vundle#begin()
endif

"Syntax highlighting
filetype plugin on
syntax on

"Change cursor in terminal
if hostname == laptop
  if &term =~ "xterm\\|urxvt"
    let &t_SI .= "\<Esc>[5 q"
    let &t_EI .= "\<Esc>[1 q"
  endif
endif

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

"SuperTab
Plugin 'ervandew/supertab'
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
"System dependent colour settings
if hostname == laptop
  "High contrast colour scheme for laptop
  colorscheme newtheme

  "Automatically higlight TODO tag
   augroup HiglightTODO
     autocmd!
     autocmd WinEnter,VimEnter * :silent! call matchadd('Error', 'TODO', -1)
   augroup END
elseif hostname == homepc
"Normal colourscheme for PC
  colorscheme newtheme
endif

"Highlight long lines after column 80
match DiffDelete  /\%81v.\+/

"Hightlight trailing spaces
augroup trailing
  au!
  au InsertEnter * :match none /\s\+$/
  au InsertLeave * :match Error /\s\+$/
augroup END

"Syntastic highlight groups
highlight syntasticWarningSign guifg=#0000FF ctermfg=12 guibg=#FFFF00 ctermbg=11
highlight syntasticErrorSign guifg=#FFFFFF ctermfg=15 guibg=#FF0000 ctermbg=9
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

"Select a block
nnoremap <Leader>b {<S-V>}k

"Sort a block
nmap <Leader>s <Leader>b:sort<cr>

"Fit block to line width
nmap <Leader>gq {o<Esc>j<Leader>b<S-J>gqq

"Easymotion shortcut
nmap <Leader>w <Plug>(easymotion-bd-w)

"TComment shortcut
nmap <Leader>c <c-_><c-_>
vmap <Leader>c <c-_><c-_>

"Unbind ex mode shortcut
nmap <S-Q> <Nop>

"Allow write in insert mode
inoremap :w<cr> <Esc>:w<cr>a
"}}}

