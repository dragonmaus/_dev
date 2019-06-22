let g:Illuminate_delay=0
let g:asmsyntax="nasm"
let g:clipboard={
      \  'name': 'homeClipboard',
      \  'copy': {
      \    '*': 'c -selection primary',
      \    '+': 'c -selection clipboard'
      \  },
      \  'paste': {
      \    '*': 'p -selection primary',
      \    '+': 'p -selection clipboard'
      \  }
      \}
let g:is_ksh=1
let g:loaded_gzip=1
let g:loaded_netrwPlugin=1
let g:loaded_tarPlugin=1
let g:loaded_zipPlugin=1
set backupcopy=yes
set colorcolumn=81,+1
set diffopt+=algorithm:patience
set diffopt+=indent-heuristic
set ignorecase
set nojoinspaces
set list
set listchars=eol:⏎,tab:>-,space:·,trail:+,extends:»,precedes:«,nbsp:_
set nomodeline
set modelines=0
set number
set numberwidth=1
set shada='0,<0,f0,h,s100
set showmatch
set sidescrolloff=1
set smartcase
set tabpagemax=100
set termguicolors
set title
set nowrapscan

runtime! plug.vim
