# Neovim
- Vim is a text editor tool that supports advanced functions through lots of plugins.
- The shortcut keys are the same as Vim, but can be customized through key mappings.

## Nvim Start
### Install Neovim
[Home-Neovim](https://neovim.io/)


```
# Open tutorial
:help nvim

# Open Neovim
nvim
```

## Plugin Manager
- vim-plugin
- lazy.nvim
- etc.

## Folder Tree
- Windows
    - AppData/Local/nvim/
        - config/
        - plugins/
        - utils/
- Linux
    - ~/.configs/nvim/
        - config/
        - plugins/
        - utils/
- Mac

## Major Plugins
- `indent-blankline`
    </br>[Indent guides for Neovim](https://github.com/lukas-reineke/indent-blankline.nvim)

- `nvim-autopairs`
    </br>[Autopairs for Neovim](https://github.com/windwp/nvim-autopairs)

- `lualine`
    </br>[Statusline plugin for Neovim](https://github.com/nvim-lualine/lualine.nvim)

- `neo-tree`
    </br>[Manage the file system with tree structures for Neovim](https://github.com/nvim-neo-tree/neo-tree.nvim)

- `nvim-treesitter`
    </br>[Provide the syntax highlight for Neovim](https://github.com/nvim-treesitter/nvim-treesitter)

- `LSP Zero`:   
    </br>[Collection of LSP packages with lazy](https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/lazy-loading-with-lazy-nvim.md)
> `lsp-zero` is the collection of LSP packages, which is analyzing your code to tell you what to do.
> The collections are as follows:
>    - Neovim - LSPconfig (nvim-lspconfig): Bridges Neovim with LSPconfig  
>    - Mason - LSPconfig (mason-lspconfig): Bridges Mason with LSPconfig
>    - Mason (mason): LSP pacakge manager for Neovim 
>    - Luasnip

- `nvim-cmp`
    </br>[Auto CoMPletion plugin for Neovim](https://github.com/hrsh7th/nvim-cmp)

- `telescope`
    </br>[Find, Filter, Preview, Pick for Neovim](https://github.com/nvim-telescope/telescope.nvim)
    </br> To use telescope well, you must have a program called `ripgrep` installed. `ripgrep` can be installed via the following link.
    [ripgrep](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)

- `markdown-preview`
    </br>[Markdown Preview for Neovim](https://github.com/iamcco/markdown-preview.nvim)

- `nvim-dap`
    </br> [Debug Adapter Protocol](https://github.com/mfussenegger/nvim-dap)

## Tips
- Broken fonts and icons
    - Make sure you have **"Nerd Fonts"**
    You can install just clicking `*.ttf` file.
    But I recommend installing as a tff **for all users**. [(Nerd Fonts)](https://www.nerdfonts.com/)
- LSP like pyright are available through npm. On Windows, you can do this by installing the Node.js program. This can be installed via the following link
    [Download Node.js](https://nodejs.org/en/download/prebuilt-installer). You can install it through the Package Manager like windget, fnm, Brew or directly using a pre-built installer.
- For python, I recommend installing `pyright` and `ruff` through Mason.

## Review
- Same behavior as `VIM`
    - If you're a `CLI` user who is familiar with `VIM`, this is great.
    - Very difficult to learn for `GUI` users.
- High degree of freedom
    - The wide world of customization opens up a whole new world for those who want to customize their text editor.
- Compatibility with Windows
    - Lint or LSP for `nvim-cmp` requires `npm`, which is the package manager for Node js.
- I've relied on the work of many people, and I'm very grateful for their help.

## Reference
- [Neovim-starter](https://github.com/moong00n/neovim-starter)
- [lsp-zero.nvim introduction](https://lsp-zero.netlify.app/v3.x/introduction.html)
- [Dash board theme](https://github.com/goolord/alpha-nvim/discussions/16#discussioncomment-8419966)
