-- Provide a better syntax highlighting for neovim using treesitter
return
{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {"lua","vim","python","css","html"},
      sync_install = false,
      highlight = {enable = true},
      indent = {enable = true},
    })
  end
}
