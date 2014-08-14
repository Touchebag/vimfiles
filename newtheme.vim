set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "newtheme"

hi   Boolean               guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   ConID                 guifg=#BF728F   ctermfg=132    guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   CTagsClass            guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   CTagsGlobalConstant   guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   CTagsGlobalVariable   guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   CTagsImport           guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   CTagsMember           guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Character             guifg=#00FFFF   ctermfg=14     guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Comment               guifg=#00AAFF   ctermfg=39     guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Conditional           guifg=#FFA500   ctermfg=214    guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Constant              guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Cursor                guifg=#FFFFFF   ctermfg=15     guibg=#FFFFFF   ctermbg=15     guisp=NONE     gui=NONE     cterm=NONE
hi   CursorColumn          guifg=NONE      ctermfg=NONE   guibg=#444444   ctermbg=241    guisp=NONE     gui=NONE     cterm=NONE
hi   CursorLine            guifg=NONE      ctermfg=NONE   guibg=#444444   ctermbg=241    guisp=NONE     gui=bold     cterm=NONE
hi   CursorLineNr          guifg=#FFFF00   ctermfg=11     guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Debug                 guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Define                guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   DefinedName           guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Delimiter             guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   DiffAdd               guifg=#00CC00   ctermfg=2      guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   DiffChange            guifg=#00CCCC   ctermfg=6      guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   DiffDelete            guifg=#CC0000   ctermfg=1      guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   DiffText              guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Directory             guifg=#00AACC   ctermfg=38     guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   EnumerationName       guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   EnumerationValue      guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Error                 guifg=#FFFFFF   ctermfg=15     guibg=#FF0000   ctermbg=196    guisp=NONE     gui=NONE     cterm=NONE
hi   ErrorMsg              guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Exception             guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Float                 guifg=#FF20A0   ctermfg=199    guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   FoldColumn            guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Folded                guifg=#AAAAAA   ctermfg=248    guibg=#002266   ctermbg=17     guisp=NONE     gui=bold     cterm=bold
hi   Function              guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Identifier            guifg=#00CCCC   ctermfg=45     guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Ignore                guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   IncSearch             guifg=#FF0000   ctermfg=9      guibg=#FFFF00   ctermbg=11     guisp=NONE     gui=NONE     cterm=NONE
hi   Include               guifg=#00B81C   ctermfg=34     guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Keyword               guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Label                 guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   LineNr                guifg=#FFFF00   ctermfg=11     guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   LocalVariable         guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Macro                 guifg=#00B81C   ctermfg=34     guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   MakeTarget            guifg=#00FFFF   ctermfg=14     guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   MakeSpecTarget        guifg=#FFA200   ctermfg=214    guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   MatchParen            guifg=NONE      ctermfg=NONE   guibg=#0000CC   ctermbg=20     guisp=NONE     gui=NONE     cterm=NONE
hi   ModeMsg               guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   MoreMsg               guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   NonText               guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Normal                guifg=#DDDDDD   ctermfg=253    guibg=#000000   ctermbg=16     guisp=NONE     gui=NONE     cterm=NONE
hi   Number                guifg=#FF7070   ctermfg=203    guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Operator              guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   PMenu                 guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   PMenuSbar             guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   PMenuSel              guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   PMenuThumb            guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   PreCondit             guifg=#00B81C   ctermfg=34     guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   PreProc               guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Question              guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Repeat                guifg=#FFA500   ctermfg=214    guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Search                guifg=#FF0000   ctermfg=9      guibg=#FFFF00   ctermbg=11     guisp=NONE     gui=NONE     cterm=NONE
hi   SignColumn            guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Special               guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   SpecialChar           guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   SpecialComment        guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   SpecialKey            guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   SpellBad              guifg=NONE      ctermfg=NONE   guibg=#FF0000   ctermbg=9      guisp=NONE     gui=NONE     cterm=NONE
hi   SpellCap              guifg=#0000FF   ctermfg=12     guibg=#FFFF00   ctermbg=11     guisp=NONE     gui=NONE     cterm=NONE
hi   SpellLocal            guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   SpellRare             guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Statement             guifg=#FFA200   ctermfg=214    guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   StatusLine            guifg=#00CC00   ctermfg=2      guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   StatusLineNC          guifg=#CC0000   ctermfg=1      guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   StorageClass          guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   String                guifg=#1BFA1B   ctermfg=10     guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Structure             guifg=#00B81C   ctermfg=34     guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Title                 guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   TabLine               guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   TabLineFill           guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   TabLineSel            guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Tag                   guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Todo                  guifg=#FF00FF   ctermfg=15     guibg=#FF00FF   ctermbg=13     guisp=NONE     gui=NONE     cterm=NONE
hi   Type                  guifg=#BF728F   ctermfg=132    guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Typedef               guifg=#00B81C   ctermfg=34     guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Underlined            guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   Union                 guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   VarId                 guifg=#FF8700   ctermfg=208    guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   VertSplit             guifg=NONE      ctermfg=NONE   guibg=#CCCCCC   ctermbg=252    guisp=NONE     gui=NONE     cterm=NONE
hi   Visual                guifg=NONE      ctermfg=NONE   guibg=#AAAAAA   ctermbg=248    guisp=NONE     gui=NONE     cterm=NONE
hi   VisualNOS             guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   WarningMsg            guifg=NONE      ctermfg=NONE   guibg=NONE      ctermbg=NONE   guisp=NONE     gui=NONE     cterm=NONE
hi   WildMenu              guifg=#FFFFFF   ctermfg=15     guibg=NONE      ctermbg=NONE   guisp=NONE     gui=bold     cterm=bold
