-- A CoMPletion engine plugin for neovim.
return {
  {
    "hrsh7th/nvim-cmp",
    event = { "BufReadPost", "BufNewFile" },
    dependencies = {
      {
        "L3MON4D3/LuaSnip",
        version = "v3.*",
        --install jsregexp option is not available for windows 11
        --build = "make install_jsregexp",
      },
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "rafamadriz/friendly-snippets",
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")

      -- load snippets
      require("luasnip.loaders.from_vscode").lazy_load()
      -- autocompletion for Editor
      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-u>"] = cmp.mapping.scroll_docs(-4),
          ["<C-d>"] = cmp.mapping.scroll_docs(4),
          ["<C-b>"] = cmp.mapping.select_prev_item(),
          ["<C-f>"] = cmp.mapping.select_next_item(),
          ["<C-s>"] = cmp.mapping.complete(), -- Show completion suggestions
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }), -- <CR>:Carriage return  (Enter Key)
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },                    -- lsp
          { name = "buffer",  max_item_count = 5 }, -- text within current buffer
          { name = "path",    max_item_count = 3 }, -- file system paths
          { name = "luasnip", max_item_count = 3 }, -- snippets (date, etc.)
        }),
      })
      -- This function is deactivated because it is duplicated with one of noice.
      --[[ -- autocompletion for search patterns ("/","?") 
      cmp.setup.cmdline({ "/", "?" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = {
          { name = "buffer" },
        },
      })
      -- autocompletion for Ex command (":")
      cmp.setup.cmdline({ ":" }, {
        mapping = cmp.mapping.preset.cmdline(),
        sources = cmp.config.sources(
          {{ name = "path" }},
          {{ name = "cmdline" }}
        ),
      }) ]]
    end,
  },
}
