call pathogen#infect()
syntax on
filetype plugin indent on

set autoindent
set smartindent
set expandtab
set softtabstop=2
set tabstop=2
set sw=2
set number
set numberwidth=4
set mouse=a
set directory=~/.vimbackup//
set ignorecase
set smartcase
set wrap
set linebreak
set showbreak=…
set incsearch
set hlsearch
set background=light
set ofu=syntaxcomplete#Complete

"statusline
set statusline=%F%m%r%h%w\ t-%Y\ l-%04l\ c-%04v\ %p%%\ l-%L\ %{fugitive#statusline()}
set laststatus=2

"keresés
map <c-f> /
map <c-d> :nohlsearch<CR>
imap ˆ ^

" Valtas ablakok között
map <c-n> :tabnext<CR>
nmap <c-t> :tabf .<CR>

" sorvegi szokozok automatikus kiemelese
highlight ExtraWhitespace ctermbg=5 guibg=5
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" sorvegi szokozok automatikus torlese
autocmd BufWritePre * :%s/\s\+$//e

" Source the vimrc file after saving it
if has("autocmd")
  autocmd bufwritepost .vimrc source $MYVIMRC
endif

filetype plugin on
" Enable CursorLine
set cursorline
set cursorcolumn
" Default Colors for CursorLine
highlight CursorLine cterm=None ctermbg=Gray

" Change Color when entering Insert Mode
autocmd InsertEnter * highlight  CursorLine ctermbg=None

" Revert Color to default when leaving Insert Mode
autocmd InsertLeave * highlight  CursorLine ctermbg=Gray

set cc=+1
highlight ColorColumn ctermbg=None cterm=underline

let g:syntastic_phpcs_conf=" --standard=~/.vim/external-libs/drupalcs/Drupal --extensions=php,module,inc,install,test,profile,theme"

" Taskpaper keys
autocmd FileType taskpaper map td <Leader>td
autocmd FileType taskpaper map tx <Leader>tx
autocmd FileType taskpaper map tt <Leader>tt
autocmd FileType taskpaper map tD <Leader>tD
autocmd FileType taskpaper map tX <Leader>tX
autocmd FileType taskpaper map tT <Leader>tT
autocmd FileType taskpaper map t/ <Leader>t/
autocmd FileType taskpaper map ts <Leader>ts
autocmd FileType taskpaper map tp <Leader>tp
autocmd FileType taskpaper map t. <Leader>t.
autocmd FileType taskpaper map tP <Leader>tP
autocmd FileType taskpaper map tj <Leader>tj
autocmd FileType taskpaper map tk <Leader>tk
autocmd FileType taskpaper map tg <Leader>tg
autocmd FileType taskpaper map tm <Leader>tm
