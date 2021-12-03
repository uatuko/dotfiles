" .vimrc
"

" pathogen
execute pathogen#infect()

set t_Co=256
colorscheme zenburn

filetype on
filetype plugin on
filetype indent on
syntax on

set ignorecase
set smartcase

set ls=2
set number
set ruler
set smarttab
set nowrap

set ts=4 sw=4
set listchars=tab:.\ ,eol:!

:nnoremap <silent> <leader>s :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

highlight RedundantWhitespace ctermbg=blue guibg=blue
match RedundantWhitespace /[\t]\+[ ]\+[\t]\+\|[ ]\+[\t]\+[ ]\+\|[\t]\+[ ]\+\|[ ]\+[\t]\+\|^[ ]\+\|[\t ]\+$/

set nocursorcolumn
set nocursorline
syntax sync minlines=256

" override colorscheme
highlight Search ctermfg=0 ctermbg=220

" set Search highlighting on
set hlsearch

" tagbar
nmap <F6> :TagbarToggle <CR>
let g:tagbar_width     = 60
let g:tagbar_autoclose = 1
let g:tagbar_autofocus = 1
let g:tagbar_compact   = 1

" nerdtree
nmap <F7> :NERDTreeToggle <CR>
nmap <F8> :NERDTreeFind <CR>

" typescript
autocmd BufNewFile,BufRead *.ts setlocal filetype=typescript

" tagbar for go (https://github.com/jstemmer/gotags)
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

