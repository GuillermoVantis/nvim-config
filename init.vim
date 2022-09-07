call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'


Plug 'terrortylor/nvim-comment'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" copilot
Plug 'github/copilot.vim'

" polyglot
Plug 'sheerun/vim-polyglot'

" colors
Plug 'NLKNguyen/papercolor-theme'
Plug 'navarasu/onedark.nvim'

" Emmet
Plug 'mattn/emmet-vim'

" Identation
Plug 'Yggdroot/indentLine'

" Airline
Plug 'bling/vim-airline'

" Nerdtree
Plug 'scrooloose/nerdtree'

" Material gruvbox
Plug 'sainnhe/gruvbox-material'

" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" nvim-dap
Plug 'mfussenegger/nvim-dap'


Plug 'nvim-lua/lsp_extensions.nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

"ale

"Plug 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'

"Plug 'f-person/git-blame.nvim'


" Typing
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'alvan/vim-closetag'

" Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Autocomplete
Plug 'silver/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Search
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug	'junegunn/fzf.vim'

Plug 'nvim-lua/plenary.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'

Plug 'https://git.sr.ht/~whynothugo/lsp_lines.nvim'


"
"Initialize plugin system
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
call plug#end()
" You can revert the settings after the call like so:
"   filetype indent off   " Disable file-type-specific indentation
"   syntax off            " Disable syntax highlighting
"
"


noremap <Leader>n :lua vim.lsp.buf.formatting_sync(nil, 10000)<CR>

"______________________________________________________________________________
"
"Shortcuts
noremap <leader>s :update<CR>


"______________________________________________________________________________
" global config
set rnu!
syntax enable

" Fuzzy finder
nnoremap <leader>j :GFiles<cr>

" Buffers navigation

nnoremap <leader>t :bnext<cr>
nnoremap <leader>g :bprevious<cr>
"Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
"

"______________________________________________________________________________
 colorscheme onedark

" Initialize plugin emmet
" - Automatically executes `filetype plugin indent on` and `syntax enable`.
let g:user_emmet_mode = 'n'
let g:user_emmet_leader_key = ','
let g:user_emmet_settings={
\ 'javascript': {
\	'extends': 'jsx',
\}
\}

"Nerd tree config
"
let NERDTreeQuitOnOpen = 1
nnoremap <silent> <F2> :NERDTreeFind<CR>
nnoremap <silent> <F3> :NERDTreeToggle<CR>

" Initialize airline tabs
let g:airline#extensions#tabline#enabled = 1


source $HOME/.config/nvim/plug-config/null-ls.lua
source $HOME/.config/nvim/COC.vim
















"




