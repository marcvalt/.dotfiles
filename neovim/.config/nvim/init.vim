set nocompatible

" Ignore files
set wildignore+=**/.git/*


let g:vimdir = "~/.config/nvim"

" All of the plugins are installed with Plug from this file.
exec "source " . g:vimdir . "/plug.vim"
" Load plugin-specific configuration.
exec "source " . g:vimdir . "/plugin_config.vim"

" Moving around, searching and patterns
set autochdir            "Automatically change working directory to that of open file
set ignorecase           "Ignore case when using a search pattern
set incsearch            "Show match for partly-typed search command
set path+=**             "Search down into subfolders
set smartcase            "Override 'ignorecase' when pattern has upper case characters

" Displaying text
set nowrap               "Turn off word wrapping
set number               "Enable line numbering, taking up 6 spaces
set numberwidth=1        "Set line numbering to take up 1 spaces
set relativenumber       "Show line numbers relative to current line
" set termguicolors        "Enabled for colorizer plugin

" Syntax highlightning
set background=dark
"set cursorline            "Highlight current line
set hlsearch             "Highlight searches

" Multiple windows
"set hidden               "Allow easier switching between files
set laststatus=2         "Always display the status line
set splitbelow           "Always open a new horizontal split below the existing one
set splitright           "Always open a new vertical split below the existing one

" Terminal
set title                "Show title in console title bar

" Tabs and indenting
set autoindent           "Automatically set the indent of a new line
set expandtab            "turn tabs into whitespace
set shiftround           "Use multiple of shiftwidth when indenting with '<' and '>'
set shiftwidth=4         "Indent width for autoindent
set smartindent          "Turn on smart indent
set softtabstop=4        "Number of spaces a tab counts when editing
set tabstop=4            "Set tab character to 4 characters

let mapleader=" " 

"Map Y to act like D and C, i.e. to yank until EOL, rather than act as yy,
"which is the default
map Y y$

" Disable arrow movement, resize splits instead.
nnoremap <Up> :resize +2<CR>
nnoremap <Down> :resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>
nnoremap <Right> :vertical resize -2<CR>

" Keep the cursor centered during search and join
nnoremap n nzzzv
nnoremap N Nzzzv
nnoremap J mzJ`z

"Go on top of a word you want to change
"Press cn or cN
"Type the new word you want to replace it with
"Smash that dot '.' multiple times to change all the other occurrences of the word
"It's quicker than searching or replacing. It's pure magic.
nnoremap cn *``cgn
nnoremap cN *``cgN


" Don't leave visual mode when (un)indenting
vnoremap < <gv
vnoremap > >gv

" Exit binded to jk
inoremap jk <Esc>

" Show opened files and select which to open
nnoremap <Leader>b :ls<CR>:b<Space>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Tab navigation
nnoremap <Tab> :tabnext<CR>
nnoremap <Leader>tc :tabnew<CR>
nnoremap <Leader>tj :tabnew %<CR>
nnoremap <Leader>tn :tabnext<CR>
nnoremap <Leader>tp :tabprevious<CR>

" Split navigation
nnoremap <Leader>h <C-w>h
nnoremap <Leader>j <C-w>j
nnoremap <Leader>k <C-w>k
nnoremap <Leader>l <C-w>l
