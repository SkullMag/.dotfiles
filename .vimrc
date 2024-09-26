set mouse=a
set number
set relativenumber
set tabstop=4 shiftwidth=4 expandtab
set smartindent
syntax on
set updatetime=300
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction

inoremap <expr> <tab> InsertTabWrapper()
inoremap <s-tab> <c-n>

let mapleader=" "

autocmd Filetype go setlocal ts=2 sw=2 expandtab!
autocmd Filetype cpp setlocal ts=2 sw=2
autocmd Filetype c setlocal ts=2 sw=2

nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

nnoremap <leader>sh :!
