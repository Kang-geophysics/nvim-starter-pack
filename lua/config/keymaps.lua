local mapKey = require("utils/keyMapper").mapKey -- Load helper function
-- Open Terminal
mapKey('<C-s>t', ':sp|term<CR><C-w>R7<C-w>-') -- Show terminal
mapKey('<Esc>','<C-\\><C-n>','t') -- Escape terminal

-- Toggle relative number line
mapKey('<leader>r',':set rnu <CR>')
mapKey('<leader>n',':set nornu <CR>')

-- Neotree toggle
mapKey('<leader>e', ':Neotree toggle<CR>') -- Space + e: open Neotree

-- pane navigation
mapKey('<C-h>', '<C-w>h') -- Left
mapKey('<C-j>', '<C-w>j') -- Down
mapKey('<C-k>', '<C-w>k') -- Up
mapKey('<C-l>', '<C-w>l') -- Right
mapKey('<C-left>',':bn<CR>') -- Navigate next buffer
mapKey('<C-right>',':bp<CR>') -- Navigate previous buffer

-- clear search hl
mapKey('<leader>h', ':nohlsearch<CR>')

-- indent
mapKey('<C-d>', '<gv', 'v') -- Indent left, <C-d>  in insert
mapKey('<C-t>', '>gv', 'v') -- Indent right, <C-t>  in insert

-- Mapping for LSP configuration
-- Auto formatting
mapKey('<leader>fmt', vim.lsp.buf.format)
-- Displays hover information about the symbol under the cursor.
mapKey('K', vim.lsp.buf.hover)
-- Go to Definition of the symbol under the cursor.
mapKey('gd', vim.lsp.buf.definition)
-- Go to Declaration of the symbol under the cursor.
mapKey('gD', vim.lsp.buf.declaration)
-- Selects a code action available at the current cursor position.
mapKey('<leader>ca', vim.lsp.buf.code_action)

-- Noice
mapKey('<leader>n',":NoiceDismiss<CR>")
