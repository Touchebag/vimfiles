set nocompatible
source $VIMRUNTIME/vimrc_example.vim
source $VIMRUNTIME/mswin.vim
behave mswin
"{{{ Special diff function (redundant)
"set diffexpr=MyDiff()
"function MyDiff()
  "let opt = '-a --binary '
  "if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
  "if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
  "let arg1 = v:fname_in
  "if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
  "let arg2 = v:fname_new
  "if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
  "let arg3 = v:fname_out
  "if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
  "let eq = ''
  "if $VIMRUNTIME =~ ' '
    "if &sh =~ '\<cmd'
      "let cmd = '""' . $VIMRUNTIME . '\diff"'
      "let eq = '"'
    "else
      "let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
    "endif
  "else
    "let cmd = $VIMRUNTIME . '\diff'
  "endif
  "silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction
"}}}

"Syntax highlighting
filetype plugin on
syntax on

"Does exactly what it says
execute pathogen#infect()

"Syntastic
let g:syntastic_enable_signs=1
let g:syntastic_check_on_open=1

"Maximises window
au GUIEnter * simalt ~x

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
"}}}

"{{{ Colour and highlighting options
"System dependent colourshceme
let hostname = substitute(system('hostname'), '\n', '', '')
if hostname == "robin-laptop"
"High contrast color scheme for laptop
   colorscheme pablo

   "Automatically higlight TODO tag
   augroup HiglightTODO
      autocmd!
      autocmd WinEnter,VimEnter * :silent! call matchadd('Error', 'TODO', -1)
   augroup END
elseif hostname == "Robin-PC"
"Noraml colourscheme for PC
   colorscheme mustang

   "Colour of TODO tag
   highlight TodoColor guifg=white guibg=blue

   "Automatically higlight TODO tag
   augroup HiglightTODO
      autocmd!
      autocmd WinEnter,VimEnter * :silent! call matchadd('TodoColor', 'TODO', -1)
   augroup END
endif

"Colour of cursor marking
highlight CursorLine guibg=#555555
highlight CursorColumn guibg=#AAAAAA

"Highlight long lines after column 80
match Error /\%81v.\+/
"}}}

"{{{ Mappings
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
"}}}

