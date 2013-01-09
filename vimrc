call pathogen#infect()
syntax on
filetype plugin indent on

set autoindent
set smartindent
set expandtab
set softtabstop=2
set tabstop=2
set number
set mouse=a
set sw=2
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
