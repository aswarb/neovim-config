let g:coq_settings = { 'auto_start' : 'shut-up' }

lua require("packer_cfg")
lua require('onedark_cfg')
lua require('mason_cfg')
lua require('conform_cfg')
lua require('mason-conform_cfg')
lua require('lsp')
let mapleader = "\<Space>"
lua require('telescope_cfg')
lua require('coq-3p_cfg')
lua require('lualine_cfg')
"lua require('tokyonight-config')
lua require('gen-nvim_cfg')
"lua require('formatter_cfg')
lua require('undotree_cfg')
lua require('keybinds')
"colorscheme tokyonight
let g:gruvbox_material_transparent_background = 1
let g:gruvbox_material_ui_contrast = 'low'
let g:gruvbox_material_background = 'medium'
let g:gruvbox_material_diagnostic_text_highlight = 0
let g:gruvbox_material_diagnostic_line_highlight = 1
let g:gruvbox_material_better_performance = 1
let g:gruvbox_material_diagnostic_virtual_text = 'colored'
"colorscheme gruvbox-material
lua require('kanagawa_cfg')
colorscheme kanagawa
"let g:nord_disable_background = v:true
"colorscheme nord
lua require('nvim-colorizer_cfg')

lua require("treesitter_cfg")
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

set number
set relativenumber
set indentexpr='smartindent'

filetype plugin indent on
syntax enable
let g:vimtex_view_method = 'zathura'
let g:vimtex_compiler_method = 'latexmk'
let maplocalleader = ","
let g:vimtex_compiler_latexmk = {
        \ 'aux_dir' : '',
        \ 'out_dir' : '',
        \ 'callback' : 1,
        \ 'continuous' : 1,
        \ 'executable' : 'latexmk',
        \ 'hooks' : [],
        \ 'options' : [
        \   '-verbose',
        \   '-file-line-error',
        \   '-synctex=1',
        \   '-interaction=nonstopmode',
	\	'-shell-escape'
        \ ],
        \}


function OpenMarkdownPreview (url)
  execute "firefox --new-tab " . a:url
endfunction
let g:mkdp_browserfunc = 'OpenMarkdownPreview'

set softtabstop=4
set shiftwidth=4
set tabstop=4
