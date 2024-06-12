local mapKeys = require("utils.keyMapper").mapKey
return {
  -- install without yarn or npm
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = function() vim.fn["mkdp#util#install"]() end,
    config = function()
      mapKeys('<C-e>', '<Plug>MarkdownPreviewToggle')
    end
  }
}
