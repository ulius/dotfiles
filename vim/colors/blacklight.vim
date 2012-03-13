" Vim color file
" Converted from Textmate theme BlackLight using Coloration v0.3.2 (http://github.com/sickill/coloration)

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "BlackLight"

hi Cursor ctermfg=NONE ctermbg=15 cterm=NONE guifg=NONE guibg=#ffffff gui=NONE
hi Visual ctermfg=NONE ctermbg=124 cterm=NONE guifg=NONE guibg=#bc1800 gui=NONE
hi CursorLine ctermfg=NONE ctermbg=233 cterm=NONE guifg=NONE guibg=#131313 gui=NONE
hi CursorColumn ctermfg=NONE ctermbg=233 cterm=NONE guifg=NONE guibg=#131313 gui=NONE
hi ColorColumn ctermfg=NONE ctermbg=233 cterm=NONE guifg=NONE guibg=#131313 gui=NONE
hi LineNr ctermfg=241 ctermbg=233 cterm=NONE guifg=#616161 guibg=#131313 gui=NONE
hi VertSplit ctermfg=237 ctermbg=237 cterm=NONE guifg=#383838 guibg=#383838 gui=NONE
hi MatchParen ctermfg=250 ctermbg=NONE cterm=NONE guifg=#c1c1c1 guibg=NONE gui=NONE
hi StatusLine ctermfg=250 ctermbg=237 cterm=bold guifg=#c1c1c1 guibg=#383838 gui=bold
hi StatusLineNC ctermfg=250 ctermbg=237 cterm=NONE guifg=#c1c1c1 guibg=#383838 gui=NONE
hi Pmenu ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=124 cterm=NONE guifg=NONE guibg=#bc1800 gui=NONE
hi IncSearch ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#404040 gui=NONE
hi Search ctermfg=NONE ctermbg=237 cterm=NONE guifg=NONE guibg=#404040 gui=NONE
hi Directory ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Folded ctermfg=59 ctermbg=0 cterm=NONE guifg=#47666d guibg=#000000 gui=NONE

hi Normal ctermfg=250 ctermbg=0 cterm=NONE guifg=#c1c1c1 guibg=#000000 gui=NONE
hi Boolean ctermfg=51 ctermbg=NONE cterm=NONE guifg=#00ffff guibg=NONE gui=NONE
hi Character ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Comment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#47666d guibg=NONE gui=italic
hi Conditional ctermfg=96 ctermbg=NONE cterm=NONE guifg=#92577e guibg=NONE gui=NONE
hi Constant ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Define ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi ErrorMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi WarningMsg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Float ctermfg=86 ctermbg=23 cterm=NONE guifg=#66ffcc guibg=#1f4d3d gui=NONE
hi Function ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Identifier ctermfg=102 ctermbg=NONE cterm=NONE guifg=#8c9281 guibg=NONE gui=NONE
hi Keyword ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Label ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi NonText ctermfg=236 ctermbg=232 cterm=NONE guifg=#323232 guibg=#0a0a0a gui=NONE
hi Number ctermfg=86 ctermbg=23 cterm=NONE guifg=#66ffcc guibg=#1f4d3d gui=NONE
hi Operator ctermfg=51 ctermbg=NONE cterm=NONE guifg=#00ffff guibg=NONE gui=NONE
hi PreProc ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Special ctermfg=250 ctermbg=NONE cterm=NONE guifg=#c1c1c1 guibg=NONE gui=NONE
hi SpecialKey ctermfg=236 ctermbg=233 cterm=NONE guifg=#323232 guibg=#131313 gui=NONE
hi Statement ctermfg=96 ctermbg=NONE cterm=NONE guifg=#92577e guibg=NONE gui=NONE
hi StorageClass ctermfg=102 ctermbg=NONE cterm=NONE guifg=#8c9281 guibg=NONE gui=NONE
hi String ctermfg=86 ctermbg=23 cterm=NONE guifg=#66ffcc guibg=#1f4d3d gui=NONE
hi Tag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Title ctermfg=250 ctermbg=NONE cterm=bold guifg=#c1c1c1 guibg=NONE gui=bold
hi Todo ctermfg=59 ctermbg=NONE cterm=inverse,bold guifg=#47666d guibg=NONE gui=inverse,bold,italic
hi Type ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline guifg=NONE guibg=NONE gui=underline
hi rubyClass ctermfg=96 ctermbg=NONE cterm=NONE guifg=#92577e guibg=NONE gui=NONE
hi rubyFunction ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInterpolationDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubySymbol ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyConstant ctermfg=198 ctermbg=0 cterm=NONE guifg=#ff0088 guibg=#000000 gui=NONE
hi rubyStringDelimiter ctermfg=86 ctermbg=23 cterm=NONE guifg=#66ffcc guibg=#1f4d3d gui=NONE
hi rubyBlockParameter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInstanceVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyInclude ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyGlobalVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexp ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRegexpDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyEscape ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyControl ctermfg=96 ctermbg=NONE cterm=NONE guifg=#92577e guibg=NONE gui=NONE
hi rubyClassVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyOperator ctermfg=51 ctermbg=NONE cterm=NONE guifg=#00ffff guibg=NONE gui=NONE
hi rubyException ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyPseudoVariable ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi rubyRailsUserClass ctermfg=198 ctermbg=0 cterm=NONE guifg=#ff0088 guibg=#000000 gui=NONE
hi rubyRailsARAssociationMethod ctermfg=244 ctermbg=NONE cterm=NONE guifg=#7f7f7f guibg=NONE gui=NONE
hi rubyRailsARMethod ctermfg=244 ctermbg=NONE cterm=NONE guifg=#7f7f7f guibg=NONE gui=NONE
hi rubyRailsRenderMethod ctermfg=244 ctermbg=NONE cterm=NONE guifg=#7f7f7f guibg=NONE gui=NONE
hi rubyRailsMethod ctermfg=244 ctermbg=NONE cterm=NONE guifg=#7f7f7f guibg=NONE gui=NONE
hi erubyDelimiter ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi erubyComment ctermfg=59 ctermbg=NONE cterm=NONE guifg=#47666d guibg=NONE gui=italic
hi erubyRailsMethod ctermfg=244 ctermbg=NONE cterm=NONE guifg=#7f7f7f guibg=NONE gui=NONE
hi htmlTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlEndTag ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlTagName ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlArg ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi htmlSpecialChar ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi javaScriptFunction ctermfg=102 ctermbg=NONE cterm=NONE guifg=#8c9281 guibg=NONE gui=NONE
hi javaScriptRailsFunction ctermfg=244 ctermbg=NONE cterm=NONE guifg=#7f7f7f guibg=NONE gui=NONE
hi javaScriptBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlKey ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAnchor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlAlias ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi yamlDocumentHeader ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssURL ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssFunctionName ctermfg=244 ctermbg=NONE cterm=NONE guifg=#7f7f7f guibg=NONE gui=NONE
hi cssColor ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssPseudoClassId ctermfg=252 ctermbg=NONE cterm=NONE guifg=#cccccc guibg=NONE gui=NONE
hi cssClassName ctermfg=252 ctermbg=NONE cterm=NONE guifg=#cccccc guibg=NONE gui=NONE
hi cssValueLength ctermfg=86 ctermbg=23 cterm=NONE guifg=#66ffcc guibg=#1f4d3d gui=NONE
hi cssCommonAttr ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
hi cssBraces ctermfg=NONE ctermbg=NONE cterm=NONE guifg=NONE guibg=NONE gui=NONE
