" Vim color file
" Converted from Textmate theme Sin City (that yellow bastard) using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "Sin City (that yellow bastard)"

hi Cursor ctermfg=NONE ctermbg=227 cterm=NONE guifg=NONE guibg=#ffff55 gui=NONE
hi Visual ctermfg=NONE ctermbg=58 cterm=NONE guifg=NONE guibg=#56391c gui=NONE
hi CursorLine ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#363636 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#363636 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#363636 gui=NONE
hi LineNr ctermfg=242 ctermbg=237 cterm=NONE guifg=#686868 guibg=#363636 gui=NONE
hi VertSplit ctermfg=239 ctermbg=239 cterm=NONE guifg=#4e4e4e guibg=#4e4e4e gui=NONE
hi MatchParen ctermfg=231 ctermbg=NONE cterm=bold guifg=#ededed guibg=NONE gui=bold
hi StatusLine ctermfg=248 ctermbg=239 cterm=bold guifg=#a6a6a6 guibg=#4e4e4e gui=bold
hi StatusLineNC ctermfg=248 ctermbg=239 cterm=NONE guifg=#a6a6a6 guibg=#4e4e4e gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=58 cterm=NONE guifg=NONE guibg=#56391c gui=NONE
hi IncSearch ctermfg=NONE ctermbg=242 cterm=NONE guifg=NONE guibg=#6a6a6a gui=NONE
hi Search ctermfg=NONE ctermbg=242 cterm=NONE guifg=NONE guibg=#6a6a6a gui=NONE
hi Directory ctermfg=251 ctermbg=NONE cterm=bold guifg=#c5c5c5 guibg=NONE gui=bold
hi Folded ctermfg=246 ctermbg=235 cterm=NONE guifg=#999999 guibg=#2a2a2a gui=NONE

hi Normal ctermfg=248 ctermbg=235 cterm=NONE guifg=#a6a6a6 guibg=#2a2a2a gui=NONE
hi Boolean ctermfg=231 ctermbg=NONE cterm=bold guifg=#f6f6f6 guibg=NONE gui=bold
hi Character ctermfg=166 ctermbg=52 cterm=NONE guifg=#d76a00 guibg=#372e26 gui=NONE
hi Comment ctermfg=246 ctermbg=240 cterm=NONE guifg=#999999 guibg=#575757 gui=italic
hi Conditional ctermfg=231 ctermbg=NONE cterm=bold guifg=#ededed guibg=NONE gui=bold
hi Constant ctermfg=251 ctermbg=NONE cterm=bold guifg=#c5c5c5 guibg=NONE gui=bold
hi Define ctermfg=231 ctermbg=NONE cterm=bold guifg=#ededed guibg=NONE gui=bold
hi ErrorMsg ctermfg=NONE ctermbg=88 cterm=NONE guifg=NONE guibg=#890b0b gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=88 cterm=NONE guifg=NONE guibg=#890b0b gui=NONE
hi Float ctermfg=166 ctermbg=52 cterm=NONE guifg=#d76a00 guibg=#372e26 gui=NONE
hi Function ctermfg=15 ctermbg=23 cterm=NONE guifg=#ffffff guibg=#283030 gui=NONE
hi Identifier ctermfg=231 ctermbg=NONE cterm=bold guifg=#ededed guibg=NONE gui=bold
hi Keyword ctermfg=231 ctermbg=NONE cterm=bold guifg=#ededed guibg=NONE gui=bold
hi Label ctermfg=179 ctermbg=52 cterm=NONE guifg=#d89f69 guibg=#372e26 gui=NONE
hi NonText ctermfg=250 ctermbg=236 cterm=NONE guifg=#bfbfbf guibg=#303030 gui=NONE
hi Number ctermfg=166 ctermbg=52 cterm=NONE guifg=#d76a00 guibg=#372e26 gui=NONE
hi Operator ctermfg=231 ctermbg=NONE cterm=bold guifg=#ededed guibg=NONE gui=bold
hi PreProc ctermfg=231 ctermbg=NONE cterm=bold guifg=#ededed guibg=NONE gui=bold
hi Special ctermfg=248 ctermbg=NONE cterm=NONE guifg=#a6a6a6 guibg=NONE gui=NONE
hi SpecialKey ctermfg=250 ctermbg=237 cterm=NONE guifg=#bfbfbf guibg=#363636 gui=NONE
hi Statement ctermfg=231 ctermbg=NONE cterm=bold guifg=#ededed guibg=NONE gui=bold
hi StorageClass ctermfg=231 ctermbg=NONE cterm=bold guifg=#ededed guibg=NONE gui=bold
hi String ctermfg=179 ctermbg=52 cterm=NONE guifg=#d89f69 guibg=#372e26 gui=NONE
hi Tag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Title ctermfg=248 ctermbg=NONE cterm=bold guifg=#a6a6a6 guibg=NONE gui=bold
hi Todo ctermfg=246 ctermbg=240 cterm=inverse,bold guifg=#999999 guibg=#575757 gui=inverse,bold,italic
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=231 ctermbg=NONE cterm=bold guifg=#ededed guibg=NONE gui=bold
hi rubyFunction ctermfg=15 ctermbg=23 cterm=NONE guifg=#ffffff guibg=#283030 gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=251 ctermbg=NONE cterm=bold guifg=#c5c5c5 guibg=NONE gui=bold
hi rubyConstant ctermfg=253 ctermbg=NONE cterm=bold guifg=#dedede guibg=NONE gui=bold
hi rubyStringDelimiter ctermfg=179 ctermbg=52 cterm=NONE guifg=#d89f69 guibg=#372e26 gui=NONE
hi rubyBlockParameter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=244 ctermbg=17 cterm=NONE guifg=#808080 guibg=#282830 gui=NONE
hi rubyInclude ctermfg=231 ctermbg=NONE cterm=bold guifg=#ededed guibg=NONE gui=bold
hi rubyGlobalVariable ctermfg=244 ctermbg=17 cterm=NONE guifg=#808080 guibg=#282830 gui=NONE
hi rubyRegexp ctermfg=166 ctermbg=52 cterm=NONE guifg=#d76a00 guibg=#372e26 gui=NONE
hi rubyRegexpDelimiter ctermfg=166 ctermbg=52 cterm=NONE guifg=#d76a00 guibg=#372e26 gui=NONE
hi rubyEscape ctermfg=254 ctermbg=NONE cterm=NONE guifg=#e4e4e4 guibg=NONE gui=NONE
hi rubyControl ctermfg=231 ctermbg=NONE cterm=bold guifg=#ededed guibg=NONE gui=bold
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=231 ctermbg=NONE cterm=bold guifg=#ededed guibg=NONE gui=bold
hi rubyException ctermfg=231 ctermbg=NONE cterm=bold guifg=#ededed guibg=NONE gui=bold
hi rubyPseudoVariable ctermfg=244 ctermbg=17 cterm=NONE guifg=#808080 guibg=#282830 gui=NONE
hi rubyRailsUserClass ctermfg=253 ctermbg=NONE cterm=bold guifg=#dedede guibg=NONE gui=bold
hi rubyRailsARAssociationMethod ctermfg=15 ctermbg=23 cterm=NONE guifg=#ffffff guibg=#283030 gui=NONE
hi rubyRailsARMethod ctermfg=15 ctermbg=23 cterm=NONE guifg=#ffffff guibg=#283030 gui=NONE
hi rubyRailsRenderMethod ctermfg=15 ctermbg=23 cterm=NONE guifg=#ffffff guibg=#283030 gui=NONE
hi rubyRailsMethod ctermfg=15 ctermbg=23 cterm=NONE guifg=#ffffff guibg=#283030 gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=246 ctermbg=240 cterm=NONE guifg=#999999 guibg=#575757 gui=italic
hi erubyRailsMethod ctermfg=15 ctermbg=23 cterm=NONE guifg=#ffffff guibg=#283030 gui=NONE
hi htmlTag ctermfg=231 ctermbg=236 cterm=NONE guifg=#f2f2f2 guibg=#303030 gui=NONE
hi htmlEndTag ctermfg=231 ctermbg=236 cterm=NONE guifg=#f2f2f2 guibg=#303030 gui=NONE
hi htmlTagName ctermfg=231 ctermbg=236 cterm=NONE guifg=#f2f2f2 guibg=#303030 gui=NONE
hi htmlArg ctermfg=231 ctermbg=236 cterm=NONE guifg=#f2f2f2 guibg=#303030 gui=NONE
hi htmlSpecialChar ctermfg=166 ctermbg=52 cterm=NONE guifg=#d76a00 guibg=#372e26 gui=NONE
hi javaScriptFunction ctermfg=15 ctermbg=23 cterm=NONE guifg=#ffffff guibg=#283030 gui=NONE
hi javaScriptRailsFunction ctermfg=15 ctermbg=23 cterm=NONE guifg=#ffffff guibg=#283030 gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAnchor ctermfg=244 ctermbg=17 cterm=NONE guifg=#808080 guibg=#282830 gui=NONE
hi yamlAlias ctermfg=244 ctermbg=17 cterm=NONE guifg=#808080 guibg=#282830 gui=NONE
hi yamlDocumentHeader ctermfg=NONE ctermbg=239 cterm=NONE guifg=NONE guibg=#4f4f4f gui=NONE
hi cssURL ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName ctermfg=15 ctermbg=23 cterm=NONE guifg=#ffffff guibg=#283030 gui=NONE
hi cssColor ctermfg=251 ctermbg=NONE cterm=bold guifg=#c5c5c5 guibg=NONE gui=bold
hi cssPseudoClassId ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssClassName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssValueLength ctermfg=166 ctermbg=52 cterm=NONE guifg=#d76a00 guibg=#372e26 gui=NONE
hi cssCommonAttr ctermfg=249 ctermbg=NONE cterm=bold guifg=#afafaf guibg=NONE gui=bold
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
