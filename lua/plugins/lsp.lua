-- Mason Language Server Protocol (LSP) Manager
-- It requires mason-lsp and nvim-lsp configs.
-- This lua file includes everything related with LSP
-- command line mode ':Mason' 
local mapKeys = require("utils.keyMapper").mapKey
return{
  {
    "williamboman/mason.nvim",
    config = function()
      require('mason').setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require('mason-lspconfig').setup({
        ensure_installed ={"lua_ls","harper_ls"}  })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require('lspconfig')
      lspconfig.lua_ls.setup({})
      lspconfig.harper_ls.setup({})
      mapKeys('K'  , vim.lsp.buf.hover) -- variable check
      mapKeys('gd' , vim.lsp.buf.definition) -- go to definition
      mapKeys('<leader>ca', vim.lsp.buf.code_action) -- suggest action
    end
  },
}
