return {
  -- none-ls.lua for Formatter, Linter or Type checker with LSP
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- You can find builtins modules
        -- https://github.com/nvimtools/none-ls.nvim/blob/main/doc/BUILTINS.md
        -- lua
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.completion.spell,
        -- ! python
        -- null_ls.builtins.formatting.{name},
        -- !! mypy
        -- null_ls.builtins.diagnostics.mypy.with({
        -- https://stackoverflow.com/questions/76487150/how-to-avoid-cannot-find-implementation-or-library-stub-when-mypy-is-installed
        -- extra_args = function()
        --  !Linux or Mac
        --  local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX") or "/usr"
        --  return { "--python-executable", virtual .. "/bin/python3" }
        --  !Windows
        --  local virtual = os.getenv("CONDA_PREFIX") -- Windows
        --  return { "--python-executable", virtual .. "/python" }
        -- end,
        --}),
        -- ! fortran
        null_ls.builtins.formatting.findent,
        null_ls.builtins.formatting.fprettify,
      },
    })
  end,
}
