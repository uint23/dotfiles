set nocompatible
autocmd FileType * setlocal noexpandtab tabstop=4 shiftwidth=4 softtabstop=4
filetype plugin indent on
syntax on
set number
set relativenumber
set termguicolors
set signcolumn=yes
set clipboard=unnamedplus
set tabstop=4
set shiftwidth=4
set foldmethod=indent
set foldlevel=99
set foldenable
set foldlevelstart=99
set laststatus=2
set mouse=a
set statusline=%f\ %m%=%l:%c\ %p%%
let mapleader=" "

" VIM-PLUG
call plug#begin('~/.vim/plugged')
Plug 'voldikss/vim-floaterm'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

" LSP config
let g:lsp_diagnostics_enabled = 1
let g:lsp_diagnostics_signs_enabled = 1
let g:lsp_diagnostics_virtual_text_enabled = 0
let g:lsp_diagnostics_highlights_enabled = 1

let g:lsp_settings_filetype_c = ['clangd']
let g:lsp_settings_filetype_cpp = ['clangd']

" enable LSP
let g:lsp_diagnostics_enabled = 1
let g:lsp_settings_filetype_c = ['clangd']
let g:lsp_settings_filetype_cpp = ['clangd']

" enable asyncomplete
let g:asyncomplete_auto_popup = 1
let g:asyncomplete_auto_completeopt = 0
set completeopt=menuone,noinsert,noselect

" LSP keybinds
nnoremap <silent> gd :LspDefinition<CR>
nnoremap <silent> gr :LspReferences<CR>
nnoremap <silent> gi :LspImplementation<CR>
nnoremap <silent> rn :LspRename<CR>
nnoremap <silent> K  :LspHover<CR>
nnoremap <silent> gs :LspDocumentSymbol<CR>
inoremap <expr> <Tab> pumvisible() ? "<C-n>" : "<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "<C-p>" : "<S-Tab>"
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

" vim keymaps
nnoremap <leader>f :Ex<CR>
nnoremap <C-t> :tabnew <bar> Ex<CR>
nnoremap <C-k> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>
vnoremap <C-c> :w !xclip -selection clipboard<CR><CR>

" custom colorscheme
hi Normal           guibg=NONE ctermbg=NONE
hi NormalNC         guibg=NONE ctermbg=NONE
hi SignColumn       guibg=NONE ctermbg=NONE
hi VertSplit        guibg=NONE ctermbg=NONE
hi StatusLine       guibg=NONE ctermbg=NONE
hi StatusLineNC     guibg=NONE ctermbg=NONE
hi LineNr           guibg=NONE ctermbg=NONE
hi CursorLineNr     guibg=NONE ctermbg=NONE
hi EndOfBuffer      guibg=NONE ctermbg=NONE

hi! StatusLine      guibg=#717394 guifg=#ffffff
hi! StatusLineNC    guibg=#717394 guifg=#ffffff
hi! StatusLineError guibg=Black   guifg=#ffffff
hi! StatusLineWarn  guibg=Black   guifg=#ffffff

" colorscheme override
colorscheme habamax
