" Vim color file
" Name:     Moody
" Date:     Tuesday, June 27, 2017
" Author:   Jak Wings <jakwings@gmail.com>
" Credits:  Thanks to http://bytefluent.com/vivify/

set background=dark

if version > 580
    hi clear
    if exists('syntax_on')
        syntax reset
    endif
endif

let g:colors_name = 'moody'

hi Boolean guifg=#afaf87 guibg=NONE guisp=NONE gui=NONE ctermfg=144 guibg=NONE cterm=NONE
hi Character guifg=#afaf87 guibg=NONE guisp=NONE gui=NONE ctermfg=144 guibg=NONE cterm=NONE
hi ColorColumn guifg=#d7d7af guibg=NONE guisp=NONE gui=NONE ctermfg=187 guibg=NONE cterm=NONE
hi Comment guifg=#4e4e4e guibg=NONE guisp=NONE gui=NONE ctermfg=239 guibg=NONE cterm=NONE
hi Conceal guifg=#d78700 guibg=NONE guisp=NONE gui=NONE ctermfg=172 guibg=NONE cterm=NONE
hi Conditional guifg=#87afd7 guibg=NONE guisp=NONE gui=NONE ctermfg=110 guibg=NONE cterm=NONE
hi Constant guifg=#afaf87 guibg=NONE guisp=NONE gui=NONE ctermfg=144 guibg=NONE cterm=NONE
hi Cursor guifg=#080808 guibg=NONE guisp=#afd75f gui=NONE ctermfg=232 guibg=NONE cterm=NONE
hi CursorColumn guifg=#d7d7af guibg=NONE guisp=NONE gui=NONE ctermfg=187 guibg=NONE cterm=NONE
hi CursorLine guifg=#d7d7af guibg=NONE guisp=NONE gui=NONE ctermfg=187 guibg=NONE cterm=NONE
hi CursorLineNr guifg=#bcbcbc guibg=NONE guisp=NONE gui=NONE ctermfg=250 guibg=NONE cterm=NONE
hi Debug guifg=#878787 guibg=NONE guisp=NONE gui=NONE ctermfg=102 guibg=NONE cterm=NONE
hi Define guifg=#87af87 guibg=NONE guisp=NONE gui=NONE ctermfg=108 guibg=NONE cterm=NONE
hi Delimiter guifg=#878787 guibg=NONE guisp=NONE gui=NONE ctermfg=102 guibg=NONE cterm=NONE
hi DiffAdd guifg=#e4e4e4 guibg=NONE guisp=#5faf5f gui=NONE ctermfg=254 guibg=NONE cterm=NONE
hi DiffChange guifg=#262626 guibg=NONE guisp=#d7d787 gui=NONE ctermfg=238 guibg=NONE cterm=NONE
hi DiffDelete guifg=#e4e4e4 guibg=NONE guisp=#ff8787 gui=NONE ctermfg=254 guibg=NONE cterm=NONE
hi DiffText guifg=#121212 guibg=NONE guisp=#d7d787 gui=bold ctermfg=233 guibg=NONE cterm=bold
hi Directory guifg=#87af87 guibg=NONE guisp=NONE gui=NONE ctermfg=108 guibg=NONE cterm=NONE
hi EndOfBuffer guifg=#444444 guibg=NONE guisp=NONE gui=NONE ctermfg=238 guibg=NONE cterm=NONE
hi Error guifg=#ffafaf guibg=NONE guisp=NONE gui=NONE ctermfg=217 guibg=NONE cterm=NONE
hi ErrorMsg guifg=#af0000 guibg=NONE guisp=NONE gui=NONE ctermfg=124 guibg=NONE cterm=NONE
hi Exception guifg=#87afd7 guibg=NONE guisp=NONE gui=NONE ctermfg=110 guibg=NONE cterm=NONE
hi Float guifg=#afaf87 guibg=NONE guisp=NONE gui=NONE ctermfg=144 guibg=NONE cterm=NONE
hi FoldColumn guifg=#87afaf guibg=NONE guisp=NONE gui=NONE ctermfg=109 guibg=NONE cterm=NONE
hi Folded guifg=#87afaf guibg=NONE guisp=#080808 gui=NONE ctermfg=109 guibg=NONE cterm=NONE
hi Function guifg=#5faf87 guibg=NONE guisp=NONE gui=NONE ctermfg=72 guibg=NONE cterm=NONE
hi Identifier guifg=#afd7af guibg=NONE guisp=NONE gui=NONE ctermfg=151 guibg=NONE cterm=NONE
hi Ignore guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE guibg=NONE cterm=NONE
hi IncSearch guifg=#1c1c1c guibg=NONE guisp=#ffffaf gui=NONE ctermfg=234 guibg=NONE cterm=NONE
hi Include guifg=#87af87 guibg=NONE guisp=NONE gui=NONE ctermfg=108 guibg=NONE cterm=NONE
hi Keyword guifg=#87afd7 guibg=NONE guisp=NONE gui=NONE ctermfg=110 guibg=NONE cterm=NONE
hi Label guifg=#87afd7 guibg=NONE guisp=NONE gui=NONE ctermfg=110 guibg=NONE cterm=NONE
hi LineNr guifg=#444444 guibg=NONE guisp=NONE gui=NONE ctermfg=238 guibg=NONE cterm=NONE
hi Macro guifg=#87af87 guibg=NONE guisp=NONE gui=NONE ctermfg=108 guibg=NONE cterm=NONE
hi MatchParen guifg=#afd787 guibg=NONE guisp=#1c1c1c gui=bold ctermfg=150 guibg=NONE cterm=bold
hi ModeMsg guifg=#d78700 guibg=NONE guisp=NONE gui=NONE ctermfg=172 guibg=NONE cterm=NONE
hi MoreMsg guifg=#87d7d7 guibg=NONE guisp=NONE gui=NONE ctermfg=116 guibg=NONE cterm=NONE
hi NonText guifg=#444444 guibg=NONE guisp=NONE gui=NONE ctermfg=238 guibg=NONE cterm=NONE
hi Normal guifg=#c6c6c6 guibg=NONE guisp=NONE gui=NONE ctermfg=251 guibg=NONE cterm=NONE
hi Number guifg=#afaf87 guibg=NONE guisp=NONE gui=NONE ctermfg=144 guibg=NONE cterm=NONE
hi Operator guifg=#87afd7 guibg=NONE guisp=NONE gui=NONE ctermfg=110 guibg=NONE cterm=NONE
hi Pmenu guifg=#afaf5f guibg=NONE guisp=NONE gui=NONE ctermfg=143 guibg=NONE cterm=NONE
hi PmenuSbar guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE guibg=NONE cterm=NONE
hi PmenuSel guifg=#ffffd7 guibg=NONE guisp=NONE gui=NONE ctermfg=230 guibg=NONE cterm=NONE
hi PmenuThumb guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE guibg=NONE cterm=NONE
hi PreCondit guifg=#87af87 guibg=NONE guisp=NONE gui=NONE ctermfg=108 guibg=NONE cterm=NONE
hi PreProc guifg=#87af87 guibg=NONE guisp=NONE gui=NONE ctermfg=108 guibg=NONE cterm=NONE
hi Question guifg=#e4e4e4 guibg=NONE guisp=NONE gui=bold ctermfg=254 guibg=NONE cterm=bold
hi Repeat guifg=#87afd7 guibg=NONE guisp=NONE gui=NONE ctermfg=110 guibg=NONE cterm=NONE
hi Search guifg=#444444 guibg=NONE guisp=#ffffd7 gui=NONE ctermfg=238 guibg=NONE cterm=NONE
hi SignColumn guifg=#87afaf guibg=NONE guisp=NONE gui=NONE ctermfg=109 guibg=NONE cterm=NONE
hi Special guifg=#878787 guibg=NONE guisp=NONE gui=NONE ctermfg=102 guibg=NONE cterm=NONE
hi SpecialChar guifg=#878787 guibg=NONE guisp=NONE gui=NONE ctermfg=102 guibg=NONE cterm=NONE
hi SpecialComment guifg=#878787 guibg=NONE guisp=NONE gui=NONE ctermfg=102 guibg=NONE cterm=NONE
hi SpecialKey guifg=#d78700 guibg=NONE guisp=NONE gui=NONE ctermfg=172 guibg=NONE cterm=NONE
hi SpellBad guifg=NONE guibg=NONE guisp=#d70000 gui=undercurl ctermfg=160 guibg=NONE cterm=underline
hi SpellCap guifg=NONE guibg=NONE guisp=#005fff gui=undercurl ctermfg=20 guibg=NONE cterm=underline
hi SpellLocal guifg=NONE guibg=NONE guisp=#ffafaf gui=undercurl ctermfg=166 guibg=NONE cterm=underline
hi SpellRare guifg=NONE guibg=NONE guisp=#606060 gui=undercurl ctermfg=245 guibg=NONE cterm=underline
hi Statement guifg=#87afd7 guibg=NONE guisp=NONE gui=NONE ctermfg=110 guibg=NONE cterm=NONE
hi StatusLine guifg=#bcbcbc guibg=NONE guisp=NONE gui=NONE ctermfg=250 guibg=NONE cterm=NONE
hi StatusLineNC guifg=#9e9e9e guibg=NONE guisp=NONE gui=NONE ctermfg=247 guibg=NONE cterm=NONE
hi StorageClass guifg=#87d7d7 guibg=NONE guisp=NONE gui=NONE ctermfg=116 guibg=NONE cterm=NONE
hi String guifg=#afaf87 guibg=NONE guisp=NONE gui=NONE ctermfg=144 guibg=NONE cterm=NONE
hi Structure guifg=#87d7d7 guibg=NONE guisp=NONE gui=NONE ctermfg=116 guibg=NONE cterm=NONE
hi TabLine guifg=#303030 guibg=NONE guisp=NONE gui=NONE ctermfg=236 guibg=NONE cterm=NONE
hi TabLineFill guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE guibg=NONE cterm=NONE
hi TabLineSel guifg=#e4e4e4 guibg=NONE guisp=NONE gui=bold ctermfg=254 guibg=NONE cterm=bold
hi Tag guifg=#878787 guibg=NONE guisp=NONE gui=NONE ctermfg=102 guibg=NONE cterm=NONE
hi Title guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=NONE guibg=NONE cterm=bold
hi Todo guifg=#080808 guibg=NONE guisp=NONE gui=NONE ctermfg=232 guibg=NONE cterm=NONE
hi Type guifg=#87d7d7 guibg=NONE guisp=NONE gui=NONE ctermfg=116 guibg=NONE cterm=NONE
hi Typedef guifg=#87d7d7 guibg=NONE guisp=NONE gui=NONE ctermfg=116 guibg=NONE cterm=NONE
hi Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline ctermfg=NONE guibg=NONE cterm=underline
hi VertSplit guifg=#262626 guibg=NONE guisp=NONE gui=NONE ctermfg=235 guibg=NONE cterm=NONE
hi Visual guifg=#080808 guibg=NONE guisp=#ffffaf gui=NONE ctermfg=232 guibg=NONE cterm=NONE
hi VisualNOS guifg=#080808 guibg=NONE guisp=#d7d7af gui=NONE ctermfg=232 guibg=NONE cterm=NONE
hi WarningMsg guifg=#ff8787 guibg=NONE guisp=NONE gui=NONE ctermfg=210 guibg=NONE cterm=NONE
hi WildMenu guifg=#d7d75f guibg=NONE guisp=NONE gui=NONE ctermfg=185 guibg=NONE cterm=NONE

