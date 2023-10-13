let g:coq_settings = { 'auto_start' : 'shut-up' }

lua require("packer-config")
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
lua require('gen-nvim-config')
"lua require('dropbar-config' - requires nightly"
colorscheme tokyonight

lua require("treesitter-config")
set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

set number
set relativenumber
set indentexpr='smartindent'
set shiftwidth=4



  function OpenMarkdownPreview (url)
    execute "silent ! firefox --new-tab " . a:url
  endfunction
  let g:mkdp_browserfunc = 'OpenMarkdownPreview'
