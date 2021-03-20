syntax enable
set nowrap
set noswapfile
set number
set splitbelow
set splitright

set ignorecase
set smartcase

set updatetime=200
set timeoutlen=400

set cmdheight=2

" Indent
set expandtab
set tabstop=4
set shiftwidth=4

set clipboard=unnamedplus

set termguicolors
colorscheme gruvbox
"
"
" AutoComplete Brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>          
inoremap {<CR> {<CR>}<ESC>O  
inoremap {;<CR> {<CR>};<ESC>O

" Commenting blocks of code.
autocmd FileType c,cpp,java,scala,cs    let b:comment_g = '// '
autocmd FileType sh,ruby,python         let b:comment_g = '# '
autocmd FileType conf,fstab             let b:comment_g = '# '
autocmd FileType tex                    let b:comment_g = '% '
autocmd FileType mail                   let b:comment_g = '> '
autocmd FileType vim                    let b:comment_g = '" '
noremap <silent> <leader>cc :<C-B>silent <C-E>s/^/<C-R>=escape(b:comment_g,'\/')<CR>/<CR>:nohlsearch<CR>
noremap <silent> <leader>cu :<C-B>silent <C-E>s/^\V<C-R>=escape(b:comment_g,'\/')<CR>//e<CR>:nohlsearch<CR>
