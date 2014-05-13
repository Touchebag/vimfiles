"Get the hostname
let hostname = substitute(system('hostname'), '\n', '', '')

set nocompatible

"Use windows bindings in windows
if hostname == "Robin-PC"
   source $VIMRUNTIME/vimrc_example.vim
   source $VIMRUNTIME/mswin.vim
   behave mswin

   "Maximises window
   au GUIEnter * simalt ~x
elseif hostname == "robin-laptop"
endif

"Syntax highlighting
filetype plugin on
syntax on

"Does exactly what it says
execute pathogen#infect()

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
"Tab bar
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
set tabstop=3

"Set size of an indent
set shiftwidth=3

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
   colorscheme mustang

   "Colour of TODO tag
   highlight TodoColor guifg=white guibg=blue

   "Automatically higlight TODO tag
   augroup HiglightTODO
      autocmd!
      autocmd WinEnter,VimEnter * :silent! call matchadd('TodoColor', 'TODO', -1)
   augroup END
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
nnoremap <f5> :source %<cr>

"Syntax check
nnoremap <f10> :SyntasticCheck<cr>

"Quick Tabularize command
nnoremap <Leader>tb :Tabularize assignment<cr>

"Quick highlight remover
nnoremap <space> :nohlsearch<cr>

"Remapping enter key to move line down
nnoremap <cr> I<cr><Esc>

"Easy navigation between tabs
map <C-J> <C-W>j<C-W><Esc>
map <C-K> <C-W>k<C-W><Esc>
map <S-H> <C-W>h<C-W><Esc>
map <S-L> <C-W>l<C-W><Esc>

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
"}}}

