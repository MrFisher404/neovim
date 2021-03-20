



let g:OmniSharp_highlighting = 1


" OmniSharp mappings
augroup omnisharp_commands
    autocmd!

    " Show type information automatically when the cursor stops moving.
    " Note that the type is echoed to the Vim command line, and will overwrite
    " any other messages in this space including e.g. ALE linting messages.
    "autocmd CursorHold *.cs OmniSharpTypeLookup

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nnoremap <buffer> <Leader>gd :OmniSharpGotoDefinition<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fi :OmniSharpFindImplementations<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fs :OmniSharpFindSymbol<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fu :OmniSharpFindUsages<CR>

    " Finds members in the current buffer
    autocmd FileType cs nnoremap <buffer> <Leader>fm :OmniSharpFindMembers<CR>

    autocmd FileType cs nnoremap <buffer> <Leader>fx :OmniSharpFixUsings<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>ti :OmniSharpTypeLookup<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>dc :OmniSharpDocumentation<CR>
    autocmd FileType cs nnoremap <buffer> <C-\> :OmniSharpSignatureHelp<CR>
    autocmd FileType cs inoremap <buffer> <C-\> <C-o>:OmniSharpSignatureHelp<CR>

    " Navigate up and down by method/property/field
    autocmd FileType cs nnoremap <buffer> <Leader>fk :OmniSharpNavigateUp<CR>
    autocmd FileType cs nnoremap <buffer> <Leader>fj :OmniSharpNavigateDown<CR>

    " Run tests
    autocmd FileType cs nnoremap <buffer> <leader>rt :OmniSharpRunTest<CR>

    " Contextual code actions (uses fzf, CtrlP or unite.vim when available)
    autocmd FileType cs nnoremap <Leader><Space> :OmniSharpGetCodeActions<CR>
    " Run code actions with text selected in visual mode to extract method
    autocmd FileType cs xnoremap <Leader><Space> :call OmniSharp#GetCodeActions('visual')<CR>

    "Previews
    autocmd FileType cs nnoremap <Leader>pi :OmniSharpPreviewImplementation<CR>
    autocmd FileType cs nnoremap <Leader>pd :OmniSharpPreviewDefinition<CR>
    
    
    autocmd FileType cs nnoremap <Leader>st :OmniSharpStatus<CR>
    autocmd FileType cs nnoremap <Leader>ss :OmniSharpStartServer<CR>


    " Rename with dialog
    autocmd FileType cs nnoremap <Leader>rn :OmniSharpRename<CR>

    " Rename without dialog - with cursor on the symbol to rename: `:Rename newname`
    autocmd FileType cs command! -nargs=1 Rename :call OmniSharp#RenameTo("<args>")

    autocmd FileType cs nnoremap <Leader>cf :OmniSharpCodeFormat<CR>



    "Show documentations
    autocmd FileType cs nnoremap <Leader>ch :OmniSharpSignatureHelp<CR>
    autocmd FileType cs nnoremap <Leader>ct :OmniSharpDocumentation<CR>

    autocmd FileType cs nmap <F1> :OmniSharpHighlightEcho<CR>
    autocmd FileType cs nmap <F2> :OmniSharpHighlightEchoKind<CR>
augroup END

let g:OmniSharp_popup_options = {
\ 'winblend': 10,
\ 'winhl': 'Normal:Normal'
\}

" Ignore certain warnings
let g:OmniSharp_diagnostic_overrides = {
\ 'CSE0003': { 'type': 'None'},
\ 'CC0038': {'type': 'None'},
\ 'CS1701': {'type': 'I'},
\ 'IDE0058': {'type': 'None'},
\ 'IDE0008': {'type': 'None'},
\ 'CC0045': {'type': 'None'},
\ 'CC0042': {'type': 'None'},
\ 'CC0071': {'type': 'I'},
\ 'MA0076': {'type': 'None'},
\ 'CC0003': {'type': 'W'},
\ 'CC0088': { 'type': 'None'},
\ 'CC0046': { 'type': 'None'},
\ 'CC0079': { 'type': 'None'},
\ 'RCS1006': { 'type': 'None'},
\ 'CC0076': { 'type': 'None'},
\ 'CC0035': { 'type': 'None'},
\ 'RCS1183': { 'type': 'None'},
\ 'RCS1090': { 'type': 'None'},
\ 'IDE0022': { 'type': 'None'},
\ 'RemoveUnnecessaryImportsFixable': {'type': 'I'}
\}

 " Highlighting Groups
 let g:OmniSharp_highlight_groups = {
 \ 'Comment': 'Comment',
 \ 'Keyword': 'Keyword',
 \ 'StringLiteral': 'String',
 \ 'ClassName': 'StorageClass',
 \ 'DelegateName': 'StorageClass',
 \ 'EnumName': 'StorageClass',
 \ 'InterfaceName': 'StorageClass',
 \ 'ModuleName': 'StorageClass',
 \ 'StructName': 'StorageClass',
 \ 'ConstantName': 'Constant',
 \ 'NamespaceName': 'Include',
 \ 'ExcludedCode': 'NonText',
 \ 'PropertyName': 'PropertyName'
 \}
