
set background=light

hi clear
if exists("syntax_on")
  syntax reset
endif

let colors_name = "mono"

if version >= 700
  hi CursorLine guibg=#e8e8e8
  hi CursorColumn guibg=#eaeaea
  hi MatchParen guifg=white guibg=#9d9d9d gui=bold

  "Tabpages
  hi TabLine guifg=black guibg=#c4c4c4 gui=italic
  hi TabLineFill guifg=#a0a0a0
  hi TabLineSel guifg=black guibg=#f4f4f4 gui=italic,bold

  "P-Menu (auto-completion)
  hi Pmenu guifg=white guibg=#808080
  "PmenuSel
  "PmenuSbar
  "PmenuThumb
endif
"
" Html-Titles
hi Title      guifg=#202020 gui=bold
hi Underlined  guifg=#202020 gui=underline
hi Cursor    guifg=black   guibg=#b0b4b8
hi lCursor   guifg=black   guibg=white
hi LineNr    guifg=#ffffff guibg=#C7C7C7
hi Normal    guifg=#525252   guibg=#f4f4f4
hi StatusLine guifg=#fafafa guibg=#a2a2a2 gui=bold,italic
hi StatusLineNC guifg=#fafafa guibg=#a2a2a2 gui=italic
hi VertSplit guifg=#a0b0c0 guibg=#a2a2a2 gui=NONE

" hi Folded    guifg=#708090 guibg=#C7C7C7
hi Folded    guifg=#a0a0a0 guibg=#e8e8e8 gui=italic
hi NonText   guifg=#c0c0c0 guibg=#f4f4f4

" Kommentare
hi Comment   guifg=#a0b0c0               gui=italic

" Konstanten
hi Constant  guifg=#a07040
hi String    guifg=#333333 
hi Number    guifg=#828282
hi Float     guifg=#70a040
"hi Statement guifg=#0070e0 gui=NONE

" Python: def and so on, html: tag-names
hi Statement  guifg=#696969 gui=bold

" HTML: arguments
hi Type       guifg=#9E9E9E gui=italic

" Python: Standard exceptions, True&False
hi Structure  guifg=#696969 gui=italic
hi Function   guifg=#757575 gui=italic
hi Identifier guifg=#555555 gui=italic
hi Repeat      guifg=#7fbf58 gui=bold
hi Conditional guifg=#4c8f2f gui=bold

" Cheetah: #-Symbol, function-names
hi PreProc    guifg=#4b4c4d gui=NONE

" Cheetah: def, for and so on, Python: Decorators
hi Define      guifg=#4b4c4d gui=bold
hi Error      guifg=red guibg=white gui=bold,underline
hi Todo       guifg=#a0b0c0 guibg=NONE gui=italic,bold,underline

" Python: %(...)s - constructs, encoding
hi Special    guifg=#70a0d0 gui=italic
hi Operator   guifg=#408010

" color of <TAB>s etc...  
hi SpecialKey guifg=#d0d0d0 guibg=#f4f4f4 gui=none

" Diff
hi DiffChange guifg=NONE guibg=#e0e0e0 gui=italic,bold
hi DiffText guifg=NONE guibg=#f0c8c8 gui=italic,bold
hi DiffAdd guifg=NONE guibg=#c0e0d0 gui=italic,bold
hi DiffDelete guifg=NONE guibg=#f0e0b0 gui=italic,bold
