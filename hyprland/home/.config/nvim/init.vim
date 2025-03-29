" 
" fide@void
"

""NVIM
set tabstop=4
set shiftwidth=4
set number
set clipboard=unnamedplus

""PLUGINS
call plug#begin()
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}	
	Plug 'kaicataldo/material.vim', {'branch': 'main'}
	Plug 'lervag/vimtex'
    Plug 'SirVer/ultisnips'
call plug#end()


""APPEARANCE 
let g:material_theme_style = 'darker'  "Opzioni: 'default', 'palenight', 'ocean', 'lighter', 'darker'
colorscheme material 
highlight Normal guibg=#000000 ctermbg=16
highlight Normal guifg=#FFFFFF ctermfg=15
highlight LineNr guifg=#6e7e9c ctermfg=9


""CONFIG 
" nvim-treesitter
lua << EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "lua", "python", "javascript", "typescript", "html", "css", "bash", "json", "yaml" },
  	sync_install = false,
  	ignore_install = { },
  	highlight = {
    		enable = true,
    		disable = { },
    		additional_vim_regex_highlighting = false,
  	},
  	incremental_selection = {
    		enable = true,
   		keymaps = {
      			init_selection = "gnn",
      			node_incremental = "grn",
      			scope_incremental = "grc",
      			node_decremental = "grm",
    		},
  	},

  	indent = {
    		enable = true
  	},
}
EOF

" VimTex
let g:vimtex_view_method = 'zathura'  " Use Zathura as the PDF viewer (Linux)
let g:vimtex_compiler_method = 'latexmk'  " Use latexmk for compilation
let g:vimtex_compiler_latexmk = {
    \ 'background': 1,
    \ 'build_dir': '',
    \ 'callback': 0,
    \ 'continuous': 1,
    \ 'options': [
    \   '-verbose',
    \   '-file-line-error',
    \   '-synctex=1',
    \   '-interaction=nonstopmode',
    \ ],
    \}

let g:vimtex_quickfix_open_on_warning = 1
let g:vimtex_syntax_enabled = 1
let g:vimtex_indent_enabled = 1
let g:vimtex_quickfix_enabled = 1
let g:vimtex_fold_enabled = 1

nmap <leader>ll <plug>(vimtex-compile)  
nmap <leader>lv <plug>(vimtex-view)     
nmap <leader>lc <plug>(vimtex-clean)    
nmap <leader>le <plug>(vimtex-errors)   


" UltiSnips
let g:python3_host_prog = '/usr/bin/python3'
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
































































































































































