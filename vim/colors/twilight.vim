" Vim color file - twilight
" Generated by http://bytefluent.com/vivify 2012-09-04
set background=dark
if version > 580
	hi clear
	if exists("syntax_on")
		syntax reset
	endif
endif

set t_Co=256
let g:colors_name = "twilight"

"hi IncSearch -- no settings --
"hi WildMenu -- no settings --
"hi SignColumn -- no settings --
"hi SpecialComment -- no settings --
"hi Typedef -- no settings --
"hi Title -- no settings --
hi Folded guifg=#a0a8b0 guibg=#384048 guisp=#384048 gui=NONE ctermfg=103 ctermbg=238 cterm=NONE
hi PreCondit guifg=#cda869 guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
hi Include guifg=#cda869 guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#000000 guibg=#f0f0f0 guisp=#f0f0f0 gui=bold,italic ctermfg=NONE ctermbg=255 cterm=bold
hi StatusLineNC guifg=#c0c0c0 guibg=#5f5a60 guisp=#5f5a60 gui=italic ctermfg=7 ctermbg=59 cterm=NONE
"hi CTagsMember -- no settings --
hi NonText guifg=#808080 guibg=#303030 guisp=#303030 gui=NONE ctermfg=8 ctermbg=236 cterm=NONE
"hi CTagsGlobalConstant -- no settings --
"hi DiffText -- no settings --
"hi ErrorMsg -- no settings --
"hi Ignore -- no settings --
"hi Debug -- no settings --
hi PMenuSbar guifg=NONE guibg=#141414 guisp=#141414 gui=NONE ctermfg=NONE ctermbg=233 cterm=NONE
hi Identifier guifg=#7587a6 guibg=NONE guisp=NONE gui=NONE ctermfg=103 ctermbg=NONE cterm=NONE
"hi SpecialChar -- no settings --
"hi Conditional -- no settings --
"hi StorageClass -- no settings --
hi Todo guifg=#808080 guibg=NONE guisp=NONE gui=bold,italic ctermfg=8 ctermbg=NONE cterm=bold
"hi Special -- no settings --
hi LineNr guifg=#808080 guibg=#141414 guisp=#141414 gui=italic ctermfg=8 ctermbg=233 cterm=NONE
hi StatusLine guifg=#f0f0f0 guibg=#4f4a50 guisp=#4f4a50 gui=italic ctermfg=255 ctermbg=239 cterm=NONE
hi Normal guifg=#f8f8f8 guibg=#141414 guisp=#141414 gui=NONE ctermfg=15 ctermbg=233 cterm=NONE
"hi Label -- no settings --
"hi CTagsImport -- no settings --
hi PMenuSel guifg=#f0f0f0 guibg=#4f4a50 guisp=#4f4a50 gui=NONE ctermfg=255 ctermbg=239 cterm=NONE
"hi Search -- no settings --
"hi CTagsGlobalVariable -- no settings --
"hi Delimiter -- no settings --
hi Statement guifg=#dad085 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
"hi SpellRare -- no settings --
"hi EnumerationValue -- no settings --
hi Comment guifg=#5f5a60 guibg=NONE guisp=NONE gui=italic ctermfg=59 ctermbg=NONE cterm=NONE
hi Character guifg=#cf6a4c guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE
"hi Float -- no settings --
hi Number guifg=#cf6a4c guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE
hi Boolean guifg=#dad085 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
"hi Operator -- no settings --
hi CursorLine guifg=NONE guibg=#182028 guisp=#182028 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
"hi Union -- no settings --
hi TabLineFill guifg=#9098a0 guibg=NONE guisp=NONE gui=NONE ctermfg=247 ctermbg=NONE cterm=NONE
"hi Question -- no settings --
"hi WarningMsg -- no settings --
"hi VisualNOS -- no settings --
"hi DiffDelete -- no settings --
"hi ModeMsg -- no settings --
hi CursorColumn guifg=NONE guibg=#182028 guisp=#182028 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi Define guifg=#cda869 guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
hi Function guifg=#dad085 guibg=NONE guisp=NONE gui=NONE ctermfg=186 ctermbg=NONE cterm=NONE
"hi FoldColumn -- no settings --
hi PreProc guifg=#cda869 guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
"hi EnumerationName -- no settings --
"hi Visual -- no settings --
"hi MoreMsg -- no settings --
"hi SpellCap -- no settings --
hi VertSplit guifg=#5f5a60 guibg=#5f5a60 guisp=#5f5a60 gui=italic ctermfg=59 ctermbg=59 cterm=NONE
"hi Exception -- no settings --
"hi Keyword -- no settings --
"hi Type -- no settings --
"hi DiffChange -- no settings --
hi Cursor guifg=NONE guibg=#586068 guisp=#586068 gui=NONE ctermfg=NONE ctermbg=242 cterm=NONE
"hi SpellLocal -- no settings --
"hi Error -- no settings --
hi PMenu guifg=#ffffff guibg=#808080 guisp=#808080 gui=NONE ctermfg=15 ctermbg=8 cterm=NONE
hi SpecialKey guifg=#808080 guibg=#343434 guisp=#343434 gui=NONE ctermfg=8 ctermbg=236 cterm=NONE
hi Constant guifg=#cf6a4c guibg=NONE guisp=NONE gui=NONE ctermfg=173 ctermbg=NONE cterm=NONE
"hi DefinedName -- no settings --
"hi Tag -- no settings --
hi String guifg=#ddf2a4 guibg=NONE guisp=NONE gui=NONE ctermfg=193 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#808080 guisp=#808080 gui=NONE ctermfg=NONE ctermbg=8 cterm=NONE
hi MatchParen guifg=#ffffff guibg=#80a090 guisp=#80a090 gui=bold ctermfg=15 ctermbg=108 cterm=bold
"hi LocalVariable -- no settings --
"hi Repeat -- no settings --
"hi SpellBad -- no settings --
"hi CTagsClass -- no settings --
"hi Directory -- no settings --
hi Structure guifg=#9B859D guibg=NONE guisp=NONE gui=NONE ctermfg=247 ctermbg=NONE cterm=NONE
hi Macro guifg=#cda869 guibg=NONE guisp=NONE gui=NONE ctermfg=179 ctermbg=NONE cterm=NONE
"hi Underlined -- no settings --
"hi DiffAdd -- no settings --
hi TabLine guifg=#000000 guibg=#b0b8c0 guisp=#b0b8c0 gui=italic ctermfg=NONE ctermbg=7 cterm=NONE
hi mbenormal guifg=#1ccf60 guibg=#3f0404 guisp=#3f0404 gui=NONE ctermfg=41 ctermbg=52 cterm=NONE
hi perlspecialstring guifg=#d0c9bd guibg=#401539 guisp=#401539 gui=NONE ctermfg=187 ctermbg=53 cterm=NONE
hi doxygenspecial guifg=#dbfdea guibg=NONE guisp=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
hi mbechanged guifg=#ee47d2 guibg=#3f0404 guisp=#3f0404 gui=NONE ctermfg=13 ctermbg=52 cterm=NONE
hi mbevisiblechanged guifg=#ee47d2 guibg=#8f7b7f guisp=#8f7b7f gui=NONE ctermfg=13 ctermbg=95 cterm=NONE
hi doxygenparam guifg=#dbfdea guibg=NONE guisp=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
hi doxygensmallspecial guifg=#dbfdea guibg=NONE guisp=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
hi doxygenprev guifg=#dbfdea guibg=NONE guisp=NONE gui=NONE ctermfg=194 ctermbg=NONE cterm=NONE
hi perlspecialmatch guifg=#d0c9bd guibg=#401539 guisp=#401539 gui=NONE ctermfg=187 ctermbg=53 cterm=NONE
hi cformat guifg=#d0c9bd guibg=#401539 guisp=#401539 gui=NONE ctermfg=187 ctermbg=53 cterm=NONE
hi lcursor guifg=#501847 guibg=#ff49e1 guisp=#ff49e1 gui=NONE ctermfg=53 ctermbg=13 cterm=NONE
"hi cursorim -- no settings --
hi doxygenspecialmultilinedesc guifg=#40ad66 guibg=NONE guisp=NONE gui=NONE ctermfg=72 ctermbg=NONE cterm=NONE
hi taglisttagname guifg=#edc6d2 guibg=NONE guisp=NONE gui=NONE ctermfg=224 ctermbg=NONE cterm=NONE
hi doxygenbrief guifg=#abfdc9 guibg=NONE guisp=NONE gui=NONE ctermfg=158 ctermbg=NONE cterm=NONE
hi mbevisiblenormal guifg=#b6cf3b guibg=#8f7b7f guisp=#8f7b7f gui=NONE ctermfg=149 ctermbg=95 cterm=NONE
hi user2 guifg=#a0a0a0 guibg=#5e5b5c guisp=#5e5b5c gui=NONE ctermfg=247 ctermbg=59 cterm=NONE
hi user1 guifg=#9249ff guibg=#5e5b5c guisp=#5e5b5c gui=NONE ctermfg=135 ctermbg=59 cterm=NONE
hi doxygenspecialonelinedesc guifg=#40ad66 guibg=NONE guisp=NONE gui=NONE ctermfg=72 ctermbg=NONE cterm=NONE
hi doxygencomment guifg=#55ad93 guibg=NONE guisp=NONE gui=NONE ctermfg=72 ctermbg=NONE cterm=NONE
hi cspecialcharacter guifg=#d0c9bd guibg=#401539 guisp=#401539 gui=NONE ctermfg=187 ctermbg=53 cterm=NONE
"hi clear -- no settings --
hi browsesuffixes guifg=#23cda0 guibg=#553746 guisp=#553746 gui=NONE ctermfg=43 ctermbg=240 cterm=NONE
hi underline guifg=#fff9fa guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi pythonimport guifg=#2b3a90 guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi pythonexception guifg=#64f048 guibg=NONE guisp=NONE gui=NONE ctermfg=119 ctermbg=NONE cterm=NONE
hi pythonbuiltinfunction guifg=#2b3a90 guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi pythonoperator guifg=#a20e58 guibg=NONE guisp=NONE gui=NONE ctermfg=125 ctermbg=NONE cterm=NONE
hi pythonexclass guifg=#2b3a90 guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi htmlitalic guifg=#49ffde guibg=NONE guisp=NONE gui=italic ctermfg=86 ctermbg=NONE cterm=NONE
hi htmlboldunderlineitalic guifg=#ff49e1 guibg=NONE guisp=NONE gui=bold,italic,underline ctermfg=13 ctermbg=NONE cterm=bold,underline
hi htmlbolditalic guifg=#ff49e1 guibg=NONE guisp=NONE gui=bold,italic ctermfg=13 ctermbg=NONE cterm=bold
hi htmlunderlineitalic guifg=#ff49e1 guibg=NONE guisp=NONE gui=bold,italic,underline ctermfg=13 ctermbg=NONE cterm=bold,underline
hi htmlbold guifg=#ff49e1 guibg=NONE guisp=NONE gui=bold ctermfg=13 ctermbg=NONE cterm=bold
hi htmlboldunderline guifg=#ff49e1 guibg=NONE guisp=NONE gui=bold,underline ctermfg=13 ctermbg=NONE cterm=bold,underline
hi htmlunderline guifg=#8b7929 guibg=NONE guisp=NONE gui=underline ctermfg=94 ctermbg=NONE cterm=underline
hi preproc guifg=#ff496a guibg=NONE guisp=NONE gui=NONE ctermfg=204 ctermbg=NONE cterm=NONE
hi subtitle guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi char guifg=#b03247 guibg=#b0329b guisp=#b0329b gui=underline ctermfg=131 ctermbg=133 cterm=underline
hi condtional guifg=#287023 guibg=NONE guisp=NONE gui=NONE ctermfg=2 ctermbg=NONE cterm=NONE
hi namespace guifg=#006400 guibg=NONE guisp=NONE gui=NONE ctermfg=22 ctermbg=NONE cterm=NONE
hi tablinefillsel guifg=#0000ff guibg=NONE guisp=NONE gui=NONE ctermfg=21 ctermbg=NONE cterm=NONE
hi rubypseudovariable guifg=#339999 guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
"hi rubystringdelimiter -- no settings --
hi rubysymbol guifg=#339999 guibg=NONE guisp=NONE gui=NONE ctermfg=73 ctermbg=NONE cterm=NONE
hi rubyinterpolation guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi regexp guifg=#44B4CC guibg=#008b8b guisp=#008b8b gui=NONE ctermfg=74 ctermbg=30 cterm=NONE
hi rubymethod guifg=#DDE93D guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=227 ctermbg=11 cterm=NONE
hi rubynumber guifg=#CCFF33 guibg=#ffff00 guisp=#ffff00 gui=NONE ctermfg=191 ctermbg=11 cterm=NONE
hi railsuserclass guifg=NONE guibg=NONE guisp=NONE gui=italic ctermfg=NONE ctermbg=NONE cterm=NONE
hi railsusermethod guifg=NONE guibg=NONE guisp=NONE gui=italic ctermfg=NONE ctermbg=NONE cterm=NONE
"hi semicolon -- no settings --
