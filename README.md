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
    - App/Data/Local/nvim/
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

- `LSP with Mason`
    </br>[Language Server Protocol for Neovim](https://github.com/williamboman/mason.nvim)

- `nvim-cmp`
    </br>[A CoMPletion plugin for Neovim](https://github.com/hrsh7th/nvim-cmp)

- `telescope`
    </br>[Find, Filter, Preview, Pick for Neovim](https://github.com/nvim-telescope/telescope.nvim)
- `markdown-preview`
    </br>[Markdown Preview for Neovim](https://github.com/iamcco/markdown-preview.nvim)

## Tips
- Broken fonts and icons
    Make sure you have "Nerd Fonts"
    You can install just clicking `*.ttf` file.
    But I recommend installing as a tff for all users.
- [Nerd Fonts](https://www.nerdfonts.com/)

## Review
- Same behavior as `VIM`
    - If you're a `CLI` user who is familiar with `VIM`, this is great.
    - Very difficult to learn for `GUI` users.
- High degree of freedom
    - The wide world of customization opens up a whole new world for those who want to customize their text editor.
- Compatibility with Windows
    - Lint or LSP for `nvim-cmp` requires `npm`, which is the package manager for Node js.
    - I think the way to apply`nvim-cmp` and `lsp` for python is very hard. I'm trying to work on it.

## Reference
- [Neovim-starter](https://github.com/moong00n/neovim-starter)
