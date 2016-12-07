
set tabstop=8			" Width of a (hard)TAB stop character [\t]
set shiftwidth=8		" Width of an IDENT
set softtabstop=8		" Combinations of SPACEs and TABs are used to simulate TAB stops
				" at a width other than a multiple of the (hard)TAB stop

" ============================================================================

"
" You may also want to try (or disable) the following:
"

"set smarttab			" Make [TAB] insert INDENTs instead of TAB characters [\t] at the beginning of a line
"set expandtab			" Make [TAB] insert SPACEs instead of TAB characters [\t]
":set viminfo^=h		" Disable highlight search patterns

" ============================================================================

"highlight ColorColumn ctermbg=235 guibg=#2c2d27
"highlight OverLength ctermbg=red ctermfg=white guibg=#59292
"highlight OverLength ctermbg=gray ctermfg=white guibg=#59292
"highlight OverLength ctermbg=gray 
"match OverLength /\%81v.\+/

" highlight all characters in virtual column 72 and more:
"highlight rightMargin term=bold ctermfg=blue guifg=blue
"highlight rightMargin term=bold ctermfg=white ctermbg=red
"match rightMargin /.\%>72v/


"set mouse=a			" enable mouse for all modes settings
set scrolloff=10		" scroll the window so we can always see 10 lines around the cursor
set textwidth=0			" Disable automatic <ENTER> whike I am entering text
"set cursorline			" highlight the current line
"set cursorcolumn		" highlight the current column


"
" appearance
"
syntax on
"set background=dark
"set t_Co=256			" 256 colors in terminal
set guifont=Ubuntu\ Mono\ 11

"
" highlight the 80th column
"
" In Vim >= 7.3, also highlight columns 120+
"if exists('+colorcolumn')
" (I picked 120-320 because you have to provide an upper bound and 320 just
" covers a 1080p GVim window in Ubuntu Mono 11 font.)
"  let &colorcolumn="80,".join(range(120,320),",")
"else
" fallback for Vim < v7.3
"  autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
"endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" My own customisations
"colorscheme blue		" blue background everywhere
"colorscheme darkblue		"
colorscheme default		"
"colorscheme delek		"
"colorscheme desert		" NO - Same colour comments & variables [make]
"colorscheme elflord		"
"colorscheme evening		"
"colorscheme koehler		"
"colorscheme morning		" white background everywhere
"colorscheme murphy		"
"colorscheme pablo		"
"colorscheme peachpuff		" similar to default - not bad :)
"colorscheme ron		"
"colorscheme shine		" similar to morning - white background everywhere
"colorscheme slate		"
"colorscheme torte		"
"colorscheme zellner		"

"set background=dark		" <sets odd fonts ??>

""""""""""""""""""""""
" status line
""""""""""""""""""""""
set laststatus=2		" always show status bar

set statusline=			" clear previous statusline values
set statusline+=%02n		" show buffer number, using two digits with leading zero
set statusline+=%m		" show [+]  (modifiled flag), if applicable
set statusline+=\ %r		" show [RO] (read-only flag), if applicable
set statusline+=\ %<%F		" show full_path/to/filename, but allow it to truncate if running out of space
set statusline+=%=		" insert a left/right separation point, anything following it, is right aligned
"set statusline+=%{&hlsearch?'+':'-'}	" ?? don't know - ignore
"set statusline+=%{&paste?'=':'\ '}	" ?? don't know - ignore
"set statusline+=%{&wrap?'<':'>'}	" ?? don't know - ignore
set statusline+=[		" show '[' (open square bracket)
set statusline+=%3b		" show value of character under cursor, decimal
"set statusline+=\'		" show ''' (apostrophe character)
set statusline+=\ x%02B		" show <space> followed by value of character under curson, hexadecimal, e.g. 'x62'
set statusline+=]		" show ']' (close square bracket)
set statusline+=\ %y		" show [<file type>] in buffer
set statusline+=%8(%c%V%)	" show cursor column - virtual column
set statusline+=,		" show ',' (comma separator for column/line numbers)
set statusline+=%-6l		" show cursor position line number; use 6 spaces and align it left, to add spaces to the right
set statusline+=%5p%%		" show cursor position % of file lines, in 5 spaces and align it right, to add spaces to the left

""""""""""""""""""""""
" buffers - F5
""""""""""""""""""""""
" F5 diplays a list of all buffers (even the hidden ones) and allows switching between them
nnoremap <F5> :buffers<CR>:buffer<Space>

set hidden			" Allow switching between buffers, even when they have been modified but not saved

""""""""""""""""""""""
" search - F7 {mc - compatible}
""""""""""""""""""""""
set incsearch			" highlight search pattern as you type it 
set hlsearch			" highlight all matches of the latest search
" F7 to turn off highlights when you had enough
nnoremap <F7> :nohlsearch<CR>

""""""""""""""""""""""
" highlight whitespace
""""""""""""""""""""""
highlight highlight_whitespace ctermbg=blue
" Show:
"  - trailing whitespace only after some text (ignores empty lines)
match highlight_whitespace /\(\S\+\)\@<=\s\+$/

" now set up StatusLine to change colour based on mode (Insert / Edit)
if version >= 700
"  au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
"  au InsertLeave * hi StatusLine term=reverse ctermbg=2 ctermfg=0 gui=bold,reverse
"  au InsertEnter * hi StatusLine ctermbg=5 ctermfg=11
"  au InsertLeave * hi StatusLine ctermbg=9 ctermfg=0
endif
