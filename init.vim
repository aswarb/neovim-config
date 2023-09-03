let g:coq_settings = { 'auto_start' : 'shut-up' }

lua require("packer-config")
lua require("treesitter-config")
lua require('onedark-config')
lua require('mason-config')
lua require('lsp-config')
let mapleader = "\<Space>"
lua require('telescope-config')
"lua require('nvim-tree-config')
lua require('coq-3p-config')
lua require('lualine-config')
lua require('tokyonight-config')
lua require('nvim-colorizer-config')
lua require('bufferline-config')
"lua require('dropbar-config' - requires nightly"
colorscheme tokyonight

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

set number
set relativenumber
set indentexpr='smartindent'
set shiftwidth=4

