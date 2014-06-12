set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "newtheme"

hi Boolean guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi CTagsClass guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi CTagsGlobalConstant guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi CTagsGlobalVariable guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi CTagsImport guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi CTagsMember guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Character guifg=#00FFFF ctermfg=14 guibg=NONE guisp=NONE gui=NONE
hi Comment guifg=#00AAFF ctermfg=39 guibg=NONE guisp=NONE gui=NONE
hi Conditional guifg=#FFA500 ctermfg=214 guibg=NONE guisp=NONE gui=NONE
hi Constant guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Cursor guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi CursorColumn guifg=NONE guibg=#666666 ctermbg=241 guisp=NONE gui=NONE
hi CursorLine guifg=NONE guibg=#666666 ctermbg=241 guisp=NONE gui=NONE
hi CursorLineNr guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Debug guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Define guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi DefinedName guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Delimiter guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi DiffAdd guifg=#00CC00 ctermfg=2 guibg=NONE guisp=NONE gui=NONE
hi DiffChange guifg=#00CCCC ctermfg=6 guibg=NONE guisp=NONE gui=NONE
hi DiffDelete guifg=#CC0000 ctermfg=1 guibg=NONE guisp=NONE gui=NONE
hi DiffText guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Directory guifg=#00AACC ctermfg=38 guibg=NONE guisp=NONE gui=NONE
hi EnumerationName guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi EnumerationValue guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Error guifg=#FFFFFF ctermfg=15 guibg=#FF0000 guisp=NONE gui=NONE
hi ErrorMsg guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Exception guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Float guifg=#FF20A0 ctermfg=199 guibg=NONE guisp=NONE gui=NONE
hi FoldColumn guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Folded guifg=#AAAAAA ctermfg=248 guibg=#002266 guisp=NONE gui=bold
hi Function guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Identifier guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Ignore guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi IncSearch guifg=#ff0000 ctermfg=9 guibg=NONE guisp=NONE gui=NONE
hi Include guifg=#00B81C ctermfg=34 guibg=NONE guisp=NONE gui=NONE
hi Keyword guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Label guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi LineNr guifg=#FFFF00 ctermfg=11 guibg=NONE guisp=NONE gui=NONE
hi LocalVariable guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Macro guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi MatchParen guifg=NONE guibg=#0000CC ctermbg=20 guisp=NONE gui=NONE
hi ModeMsg guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi MoreMsg guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi NonText guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Normal guifg=#DDDDDD ctermfg=253 guibg=#000000 guisp=NONE gui=NONE
hi Number guifg=#FF7070 ctermfg=203 guibg=NONE guisp=NONE gui=NONE
hi Operator guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi PMenu guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi PMenuSbar guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi PMenuSel guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi PMenuThumb guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi PreCondit guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi PreProc guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Question guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Repeat guifg=#FFA500 ctermfg=214 guibg=NONE guisp=NONE gui=NONE
hi Search guifg=#FF0000 ctermfg=9 guibg=NONE guisp=NONE gui=NONE
hi SignColumn guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Special guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi SpecialChar guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi SpecialComment guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi SpecialKey guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi SpellBad guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi SpellCap guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi SpellLocal guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi SpellRare guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Statement guifg=#FFA200 ctermfg=214 guibg=NONE guisp=NONE gui=NONE
hi StatusLine guifg=#00CC00 ctermfg=2 guibg=NONE guisp=NONE gui=NONE
hi StatusLineNC guifg=#CC0000 ctermfg=1 guibg=NONE guisp=NONE gui=NONE
hi StorageClass guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi String guifg=#1BFA1B ctermfg=10 guibg=NONE guisp=NONE gui=NONE
hi Structure guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Title guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi TabLine guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi TabLineFill guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi TabLineSel guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Tag guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Todo guifg=#FFFFFF ctermfg=15 guibg=#FF00FF guisp=NONE gui=NONE
hi Type guifg=#BF728F ctermfg=132 guibg=NONE guisp=NONE gui=NONE
hi Typedef guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Underlined guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi Union guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi VertSplit guifg=NONE guibg=#CCCCCC ctermbg=252 guisp=NONE gui=NONE
hi Visual guifg=NONE guibg=#AAAAAA ctermbg=248 guisp=NONE gui=NONE
hi VisualNOS guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi WarningMsg guifg=NONE guibg=NONE guisp=NONE gui=NONE
hi WildMenu guifg=#FFFFFF ctermfg=15 guibg=NONE guisp=NONE gui=bold

hi cursorim guifg=#191a24 ctermfg=234 guibg=#675391 guisp=#675391 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
"hi clear -- no settings --
