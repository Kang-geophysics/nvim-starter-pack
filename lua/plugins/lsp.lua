-- Mason Language Server Protocol (LSP) Manager
-- It requires mason-lsp and nvim-lsp configs.
-- This lua file includes everything related with LSP
-- command line mode ':Mason' 
local mapKeys = require("utils.keyMapper").mapKey
return{
  {
    -- Mason installation
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },
  {
    -- Mason and LSP 
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed ={"lua_ls","pylsp"}  })
    end
  },
  {
    -- Nvim and LSP
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.pylsp.setup({})
      mapKeys('K'  , vim.lsp.buf.hover) -- variable check
      mapKeys('gd' , vim.lsp.buf.definition) -- go to definition
      mapKeys('<leader>ca', vim.lsp.buf.code_action) -- suggest action
    end
  },
}
