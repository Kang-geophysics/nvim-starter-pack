local mapKey = require("utils/keyMapper").mapKey -- Load helper function
-- Open Terminal
mapKey('<leader>ts', ':sp|term<cr><C-w>R')
mapKey('<leader>tv', ':vs|term<cr><C-w>r')

-- Neotree toggle
mapKey('<leader>e', ':Neotree toggle<cr>') -- space + e: open Neotree

-- Telescope
-- pane navigation
mapKey('<C-h>', '<C-w>h') -- Left
mapKey('<C-j>', '<C-w>j') -- Down
mapKey('<C-k>', '<C-w>k') -- Up
mapKey('<C-l>', '<C-w>l') -- Right

-- clear search hl
mapKey('<leader>h', ':nohlsearch<CR>')

-- indent
mapKey('<C-p>', '<gv', 'v') -- indent right
mapKey('<C-]>', '>gv', 'v') -- indent left

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
