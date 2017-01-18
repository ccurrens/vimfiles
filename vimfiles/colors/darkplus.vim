"
" Dark+ theme based on the one that ships with VSCode
"

set background=dark

hi clear

if exists("syntax_on")
  syntax reset
endif

let colors_name = "darkplus"

" Vim >= 7.0 specific colors
if version >= 700
  hi CursorLine   guibg=#2d2d2d
  hi CursorColumn guibg=#2d2d2d
  hi MatchParen   guifg=#f6f3e8 guibg=#857b6f gui=bold
  hi Pmenu        guifg=#f6f3e8 guibg=#444444
  hi PmenuSel     guifg=#000000 guibg=#cae682
endif

" General colors
hi Cursor         guifg=NONE    guibg=#a5a5a5 gui=none
hi Normal         guifg=#d4d4d4 guibg=#1e1e1e gui=none
hi NonText        guifg=#4e4e4e guibg=NONE gui=none
hi LineNr         guifg=#857b6f guibg=#000000 gui=none
hi StatusLine     guifg=#f6f3e8 guibg=#444444 gui=italic
hi StatusLineNC   guifg=#857b6f guibg=#444444 gui=none
hi VertSplit      guifg=#444444 guibg=#444444 gui=none
hi Folded         guibg=#384048 guifg=#a0a8b0 gui=none
hi Title          guifg=#f6f3e8 guibg=NONE    gui=bold
hi Visual         guifg=#f6f3e8 guibg=#444444 gui=none
hi SpecialKey     guifg=#4e4e4e guibg=NONE gui=none

" Syntax highlighting
hi Comment        guifg=#608b4e gui=italic

hi Constant       guifg=#e5786d gui=none
hi String         guifg=#ce9178 gui=none
hi Character      guifg=#ce9178 gui=none
hi Number         guifg=#b5cea8 gui=none
hi Boolean        guifg=#569cd6 gui=none
hi Float          guifg=#b5cea8 gui=none

hi Identifier     guifg=#cae682 gui=none
hi Function       guifg=#dcdcaa gui=none

hi Statement      guifg=#569cd6 gui=none
hi Operator       guifg=#d4d4d4 gui=none

hi PreProc        guifg=#569cd6 gui=none " TODO: Can I separate keyword from MACRO?
hi Include        guifg=#c586c0 gui=none
hi Define         guifg=#c586c0 gui=none
hi Macro          guifg=#c586c0 gui=none
hi PreCondit      guifg=#c586c0 gui=none

hi Type           guifg=#569cd6 gui=none

hi Special        guifg=#ff0000 gui=none
hi SpecialChar    guifg=#e07a00 gui=none
hi Tag            guifg=#ff0000 gui=none
hi Delimiter      guifg=#ff0000 gui=none
hi SpecialComment guifg=#ff0000 gui=none
hi Debug          guifg=#ff0000 gui=none

hi Error          guifg=#f44747 guibg=NONE gui=none

hi Todo           guifg=#569cd6 guibg=NONE gui=bold

" My new stuff starts here
hi Label          guifg=#47e0c3 gui=none

" C/C++ specific
hi cFormat	  guifg=#80ff80 gui=none
