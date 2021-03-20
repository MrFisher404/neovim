let mapleader=" "

"" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize +2<CR>
nnoremap <M-l>    :vertical resize -2<CR>

" Go To file new window
function! OpenFileInPrevWindow()
    let cfile = expand("<cfile>")
    wincmd p
    execute "edit " . cfile
endfunction

nmap <Leader>gf :call OpenFileInPrevWindow()<CR>

nnoremap <M-n>    :cnext<CR>
nnoremap <M-p>    :cprevious<CR>
nnoremap <M-o>    :copen<CR>

" Better window navigation
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l

" TeleScope Mappings
    " Find files using Telescope command-line sugar.
    nnoremap <leader>ff <cmd>Telescope find_files<cr>
    nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    nnoremap <leader>fb <cmd>Telescope buffers<cr>
    nnoremap <leader>fh <cmd>Telescope help_tags<cr>

    " Using lua functions
    nnoremap <leader>ff <cmd>lua require('telescope.builtin').find_files()<cr>
    nnoremap <leader>fg <cmd>lua require('telescope.builtin').live_grep()<cr>
    nnoremap <leader>fb <cmd>lua require('telescope.builtin').buffers()<cr>
    nnoremap <leader>fh <cmd>lua require('telescope.builtin').help_tags()<cr>

" NERDTree
nnoremap <leader>nf :NERDTree %<CR> 
nnoremap <leader>ns :NERDTreeToggleVCS<CR> 
nnoremap <leader>nt :NERDTreeToggle<CR> 


inoremap jk <Esc>
inoremap kj <Esc>

map <C-f> :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>
