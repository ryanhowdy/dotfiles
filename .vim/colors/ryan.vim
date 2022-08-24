" Ryan colour scheme

" 46  - neon green
" 67  - purple/blue
" 75  - blue
" 84  - green
" 117 - light blue
" 130 - dark orange
" 176 - pink
" 203 - red/pink
" 208 - orange
" 213 - pink
" 215 - orange/yellow
" 227 - yellow
" 234
" 238
" 241
" 244
" 252
" 255


set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = 'ryan'


" -> Text; Miscellaneous
hi Normal                   ctermfg=252     ctermbg=234     cterm=none
hi SpecialKey               ctermfg=46
"hi VertSplit
hi SignColumn               ctermfg=46
hi NonText                  ctermfg=252
"hi Directory                ctermfg=227
hi Title                    ctermfg=46

" -> Cursor 
"hi Cursor                   ctermbg=227     ctermfg=234     cterm=none
"hi CursorIM                 ctermbg=227     ctermfg=234     cterm=none
hi CursorColumn             ctermbg=46                      cterm=none
hi CursorLine               ctermfg=none    ctermbg=236     cterm=none

" -> Folding
"hi FoldColumn               ctermbg=234     ctermfg=25      cterm=none
"hi Folded                   ctermbg=234     ctermfg=25      cterm=none

" -> Line info  
hi LineNr                   ctermfg=238
hi StatusLine               ctermfg=241     ctermbg=0       cterm=none
hi StatusLineNC             ctermfg=241     ctermbg=237     cterm=none
                                                            
" -> Messages                                               
hi ErrorMsg                 ctermfg=84      ctermbg=none    cterm=none
hi Question                 ctermfg=84      ctermbg=none    cterm=none
hi WarningMsg               ctermfg=84      ctermbg=none    cterm=none
hi MoreMsg                  ctermfg=84      ctermbg=none    cterm=none
hi ModeMsg                  ctermfg=84      ctermbg=none    cterm=none
                                                           
" -> Search                                                 
hi Search                   ctermfg=none    ctermbg=0       cterm=none 
hi IncSearch                ctermfg=none    ctermbg=0       cterm=none
                                                            
" -> Diff                                                   
hi DiffAdd                  ctermfg=208     ctermbg=22      cterm=none
hi DiffChange               ctermfg=130     ctermbg=235     cterm=none
hi DiffDelete               ctermfg=208     ctermbg=234     cterm=none
hi DiffText                 ctermfg=208     ctermbg=24      cterm=underline
                                                            
" -> Menu                                                   
"hi Pmenu                    ctermfg=52      ctermbg=0       cterm=none
"hi PmenuSel                 ctermfg=52      ctermbg=208     cterm=none
"hi PmenuSbar                                ctermbg=52      cterm=none
"hi PmenuThumb                               ctermbg=52      cterm=none
"hi PmenuSel                 ctermfg=52      ctermbg=208     cterm=none
                                                            
" -> Tabs                                                   
hi TabLine                  ctermfg=244     ctermbg=232     cterm=none
hi TabLineFill                              ctermbg=0       cterm=none
hi TabLineSel               ctermfg=255     ctermbg=234     cterm=bold 
"                                                           
" -> Visual Mode                                            
hi Visual                   ctermfg=215     ctermbg=0       cterm=none 
hi VisualNOS                ctermfg=241     ctermbg=0       cterm=none

" -> Code
hi Comment                  ctermfg=244
hi phpSpecialComment        ctermfg=215
hi perlPOD                  ctermfg=215
hi Constant                 ctermfg=84
hi String                   ctermfg=66
hi Error                    ctermfg=203
hi Identifier               ctermfg=75
hi phpIdentifier            ctermfg=75
hi phpVarSelector           ctermfg=75
hi Function                 ctermfg=117
hi phpFunctions             ctermfg=252
hi phpStructure             ctermfg=252
hi phpSpecialFunction       ctermfg=252
hi Ignore                   ctermfg=234
hi MatchParen               ctermfg=213     ctermbg=0
hi PreProc                  ctermfg=244
hi Special                  ctermfg=215
hi Todo                     ctermfg=203
hi Underlined               ctermfg=203                     cterm=underline
hi Statement                ctermfg=176
hi Operator                 ctermfg=203
hi phpOperator              ctermfg=203
hi Delimiter                ctermfg=244
hi Type                     ctermfg=244
hi phpType                  ctermfg=244
hi Exception                ctermfg=203

" -> PHP-specific
hi phpDefine                ctermfg=176

" -> HTML-specific
hi htmlBold                 ctermbg=234     ctermfg=252     cterm=bold
hi htmlBoldItalic           ctermbg=234     ctermfg=252     cterm=bold,italic
hi htmlBoldUnderline        ctermbg=234     ctermfg=252     cterm=bold,underline
hi htmlBoldUnderlineItalic  ctermbg=234     ctermfg=252     cterm=bold,underline,italic
hi htmlItalic               ctermbg=234     ctermfg=252     cterm=italic
hi htmlUnderline            ctermbg=234     ctermfg=252     cterm=underline
hi htmlUnderlineItalic      ctermbg=234     ctermfg=252     cterm=underline,italic
