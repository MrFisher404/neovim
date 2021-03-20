"Polygot settings
set nocompatible
let g:polyglot_disabled = ['markdown']

call plug#begin('~/AppData/Local/nvim/autoload/plugged')

    Plug 'preservim/nerdtree'
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'dense-analysis/ale'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'gruvbox-community/gruvbox'
    Plug 'tpope/vim-fugitive'
    Plug 'sheerun/vim-polyglot'

    "TeleScope Requirements
    Plug 'nvim-lua/popup.nvim'
    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-telescope/telescope.nvim'
    
call plug#end()

"if exists('+termguicolors')
 " let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  "let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  "set termguicolors
"endif

" Coc
"" Tab complete
	inoremap <silent><expr> <TAB>
	  \ pumvisible() ? coc#_select_confirm() :
	  \ coc#expandableOrJumpable() ?
	  \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
	  \ <SID>check_back_space() ? "\<TAB>" :
	  \ coc#refresh()

	function! s:check_back_space() abort
	  let col = col('.') - 1
	  return !col || getline('.')[col - 1]  =~# '\s'
	endfunction

	let g:coc_snippet_next = '<tab>'

" Airline
let g:airline_theme='gruvbox'
