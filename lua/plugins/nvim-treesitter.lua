-- Provide a better syntax highlighting for neovim using treesitter
return
{
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local configs = require("nvim-treesitter.configs")
    configs.setup({
      ensure_installed = {"lua","vim","fortran","python","css","html","markdown"},
      sync_install = false,
      highlight = {enable = true},
      indent = {enable = true},
    })
  end
}
