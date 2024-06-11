local mapKey = require("utils/keyMapper").mapKey -- Load helper function

-- Neotree toggle
mapKey('<leader>e',':Neotree toggle<cr>') -- space + e: open Neotree

-- Telescope

-- pane navigation
mapKey('<C-h>','<C-w>h') -- Left
mapKey('<C-j>','<C-w>j') -- Down
mapKey('<C-k>','<C-w>k') -- Up
mapKey('<C-l>','<C-w>l') -- Right

-- clear search hl
mapKey('<leader>h',':nohlsearch<CR>')

-- indent
mapKey('<C-,>','<gv','v') -- indent right
mapKey('<C-.>','>gv','v') -- indent left
