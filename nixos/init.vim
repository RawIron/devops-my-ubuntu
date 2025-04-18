"
set nocompatible              " be iMproved, required
filetype off                  " required


" Syntax Highlighting
syntax on

" Highlight matches of search
set hlsearch
" search while typing
set incsearch

" highlight last inserted text
nnoremap gV `[v`]

" search in subfolders
" works with tab-completion
set path+=**

" visual autocomplete for command menu
set wildmenu

set wildignore+=*/tmp/*,*.so,*.swp
set wildignore+=*/vendor/*,*.o,*.pyc
set wildignore+=*/tags/*,*.log,*.zip
set wildignore+=*/\.git/*

" split layout
set splitright

" jump to first open window that contains buffer
set switchbuf+=useopen,vsplit

" file browser netrw
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 2
let g:netrw_winsize = 15

" file browser broot
let g:broot_default_conf_path = expand('~/.config/broot/conf.hjson')


"
" KEY MAPPINGS - leader
"

" the \ is too far away for a leader key
let mapleader=","

" the <esc> is too far away
inoremap ;; <esc>

" 1 key

" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>

" open file browser
nnoremap <leader>n :Vexplore<CR>

" run build
nnoremap <leader>m :make

" silver-searcher
nnoremap <leader>a :Ag<Space>

" ripgrep
nnoremap <leader>r :Rg<Space>

" buffers, including unlisted
nnoremap <leader>b :buffers!<CR>:buffer<Space>

" toggle QuickFix
nnoremap <leader>c :cw<CR>

" help
nnoremap <leader>h :help 

" close terminal window
tnoremap <leader>q <C-w>:q!<CR>
nnoremap <leader>q <C-\><C-n>:q!<CR>


" 2 keys
nnoremap <leader>eh :Broot<CR>
nnoremap <leader>ev :Broot vsplit<CR>

""" tool windows
" quickfix
nnoremap <leader>co :copen<CR>
nnoremap <leader>cc :cclose<CR>
nnoremap <leader>cn :cnext<CR>
nnoremap <leader>cp :cprevious<CR>

" location list
nnoremap <leader>lo :lopen<CR>
nnoremap <leader>lc :lclose<CR>
nnoremap <leader>ln :lnext<CR>
nnoremap <leader>lp :lprevious<CR>

" preview

" help
nnoremap <leader>hc :helpclose<CR>


" fuzzy file search
nnoremap <C-p> :FZF<CR>

" Save and quit
nnoremap <C-S> :w<CR>
nnoremap <C-Q> :wq<CR>

" Delete Line
nnoremap <c-d> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <c-s-d> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
" Insert Line
nnoremap <c-y> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <c-s-y> :set paste<CR>m`O<Esc>``:set nopaste<CR>

