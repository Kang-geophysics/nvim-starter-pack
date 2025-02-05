# Introductions
I made this repository to study how to use Neovim.

# Neovim
- Neovim is a text editor tool that supports advanced functions through lots of plugins.
- The shortcut keys are the same as Vim, but can be customized through key mappings.

## Nvim Start
### Install Neovim
[Home-Neovim](https://neovim.io/)
```bash
# Open tutorial
:help nvim

# Open Neovim
nvim
```
- Version: 0.10.1

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
    - [Indent guides for Neovim](https://github.com/lukas-reineke/indent-blankline.nvim)

- `autopairs`
    - [Autopairs for Neovim](https://github.com/windwp/nvim-autopairs)

- `comment`
    - [Comment for Neovim](https://github.com/numToStr/Comment.nvim)
    - Normal mode
        - gcc: Toggles current line comment
        - {count} gcc: Toggles given the number of lines comment
        - gcb: Toggle current block comment
    - Visual mode
        - gc: Toggle current line comment
        - gb: Toggle current block comment

- `markdown`
    - [Markdown Viewer for Neovim](https://github.com/MeanderingProgrammer/markdown.nvim?tab=readme-ov-file#setup)
    - For Latex,`pylatexenc` and `latex parser` for tree-sitter are required.
        - `pylatexenc` can be installed with `pip` or `conda`
        - `latex parser` can be installed with `:TSInstall latex`
            - For this, you need `tree-sitter-cli`. If your OS is Windows, you can install `tree-sitter-cli` following command.
                - `npm install g tree-sitter-cli`
    - [Markdown, HTML, LaTeX, Typst & YAML previewer for Neovim](https://github.com/OXY2DEV/markview.nvim)

- `obsidian`
    - [Obsidian plugin for Neovim](https://github.com/epwalsh/obsidian.nvim)
    - Before you start this plugin, please set the default vaults for obsidian.
        - In my case, I made `~/vaults/obsi/` for default directory.

- `lualine`
    - [Statusline plugin for Neovim](https://github.com/nvim-lualine/lualine.nvim)

- `neo-tree`
    - [Manage the file system with tree structures for Neovim](https://github.com/nvim-neo-tree/neo-tree.nvim)
    - Basically, it can handle three sources. One is a "file system", another is a "buffers", which is a list of recently used files, and the other is a "git status". 
    - The "file system" gives you the same functionality as Windows Explorer.
    - The "buffers" allows you to view and move recently used and opened files at a glance.
        - If you want to move quickly between buffers, I recommend setting keymp ":bp\<CR>" and ":bn\<CR>" to something.
        - In my case, I set both to  "\<C-left>" and "\<C-right>" respectively.
    - The "git-status" provides the convenience of performing  "git add/git commit/git push/git rever/ etc."
        - If you need basic git functionality, you don't need to install any other plugins for neovim.

- `telescope`
    - [Find, Filter, Preview, Pick for Neovim](https://github.com/nvim-telescope/telescope.nvim)
    - To use telescope well, you should have a program called [`ripgrep`](https://github.com/BurntSushi/ripgrep?tab=readme-ov-file#installation)
    - Major functions
        - Find Files
        - Find strings (Live grep)
        - Find words under cursor (Find word)
        - Find buffers (buffers)
        - Find helper (Help) 
    - Support Quickfix
        - You don't need to memorize all positions you found.
        - You can select a list of location in "Live grep" using "Tab"
        - If you choose, "+" mark will be annotated in front of selected list.
        - `<Ctl-q>`: Add all itmes to `Quickfixlist`
        - `<Alt-q>`: Add selected items to `Quickfixlist` (
            - Using `:cn` and`:cp`, you can move to another file in `Quickfixlist` you added.

- `treesitter`
    - [Provide the syntax highlight for Neovim](https://github.com/nvim-treesitter/nvim-treesitter)

- `noice`
    - [Provide messages,cmdline and the popupmenu for Neovim](https://github.com/folke/noice.nvim)
    - "Noice" is good plugin but I prefer not to use it. So I remvoed it.

- `git-stuff`
    - [Git wrapper for Neovim](https://github.com/tpope/vim-fugitive)
    - [Provide straightforward interface for Git in Neovim](https://github.com/kdheepak/lazygit.nvim)

- `LSP Zero`:   
    - [Collection of LSP packages with lazy](https://github.com/VonHeikemen/lsp-zero.nvim/blob/v3.x/doc/md/guides/lazy-loading-with-lazy-nvim.md)
    - `lsp-zero` is the collection of LSP packages, which is analyzing your code to tell you what to do.
    - The collections are as follows:
        - Neovim - LSPconfig (nvim-lspconfig): Bridges Neovim with LSPconfig  
        - Mason - LSPconfig (mason-lspconfig): Bridges Mason with LSPconfig
        - Mason (mason): LSP pacakge manager for Neovim 
            - Language Server Protocol (LSP):
                - `lua-language-server`
                - `markdown-oxide`
                - `pyright`
                - `ruff`
                - `fortls`
        - Debug Adapter Protocol (DAP): 
            - `debugpy`
        - Linter: Check the code and provide hints on how to correct the detected problems. 
        - Formatter: Provide uniform coding style
            - `stylua`
            - `fprettify`
        - Luasnip
            - [Snippet engine for Neovim](https://github.com/L3MON4D3/LuaSnip)
            - It is a `snippet engine` written with lua.

- `cmp`
    - [Auto CoMPletion plugin for Neovim](https://github.com/hrsh7th/nvim-cmp)

- `none-ls`
    - [Inject Diagnostics/Code actions/Formatting/Hover/Completion to lsp](https://github.com/nvimtools/none-ls.nvim)
    - `Lua`
        - `stylua`
    - `Python` 
        - Linter like `mypy` or formatter like black needs to be set up to use`lsp.buf.*`. This repository provides this setups. 
    - `Fortran`
        - `findent`
        - `fprettify`

- `dap`
    - [Debug Adapter Protocol](https://github.com/mfussenegger/nvim-dap)
    - This repository provides python debbuger.
    - Deleted.

## Tips
- Broken fonts and icons
    - Make sure you have **"Nerd Fonts"** or not.
    - You can install just by clicking on the `*.ttf` file if your OS is Windows.
    - I recommend installing it **for all users**. [(Nerd Fonts)](https://www.nerdfonts.com/)
- LSP 
    - LSP like pyright are available through npm. On Windows, you can do this by installing the `Node.js` program. This can be installed via the following link
    [Download Node.js](https://nodejs.org/en/download/prebuilt-installer). You can install it through the Package Manager like windget, fnm, Brew or directly using a pre-built installer.
    - For python, I recommend installing `pyright (LSP)` and `ruff(LSP+Linter+Formatter)` through Mason.
- Buffers
    - Buffers are everything you've loaded before (in-memory texts).
    - It's like a pile of books on your desk.
    - Each buffer has a unique number. Thus you can always go to a specific buffer ":bufferN"
    - If you try to quit a modified file without saving, you will get anrror message. Vim will pull the file from the buffer into the current window.
    - Buffers has 3 states.
        - Active  : It is displayed in the current window.
        - Hiddne  : It is not displayed in the current window, and was previously loaded. 
        - Inactive: It is not displayed in the current window, and was previously loaded but closed. 
    - You can check buffers through command ":buffers, :ls, :files"
        - `:buffers[!] [flags]` / `:ls[!] [flags]` / `:files[!] [flags]`
        - When "!" is included command, it will show not only ordinary buffers but also unlisted buffers which is a kind of help documents or neotree systems or quickfix list.
            -`:buffers!`
        - `:buffers` shows list in buffers.
            - Buffer No. / Indicator / Path / Line No. of cursor
            - Each buffer has a unique number. Thus you can alwasy call each buffer with 
                - `:buffer N` or `:N<C-^>`
            - Indicator
                - `u` (unlisted buffer)
                - `%` (current buffer)
                - `#` (recently loaded buffer)
                - `a` (active buffer: loaded and displayed)
                - `h` (hidden buffer: loaded but invisible)
                - `+` (modified buffer)
                - `-` (immutable buffer)
                - `=` (readonly buffer)
                - ex)
                    - 1: %a and 2: a
                    - buffer 1 is displayed in window and cursor is in it.
                    - buffer 2 is displayed in window but cursor is not in.
        - `:bdelete N1 N2` delete a Nth buffer in buffers.
        - `:bufdo {cmd}` execute {cmd}
            - Also see `tabdo`,`argdo`,`windo`,`cdo`,`ldo`

- Quickfix list
    - It is list to save the location of error message (or searching pattern).
    - `:vim[grep] {pattern} {file}` adds lists to quickfix list. 
        - `:vim {pattern} /usr/**`: finds `{pattern}` in directory `/usr/` and add locations to quickfix list.
    - `:copen` opens a window to show the current list of searching patterns.
    - `:cn[ext]`,`:cp[revious]`, `:cfir[st]`, `:cla[st]` are used to navigate files in the quickfix list.
    - `:cc N` is used to navigate Nth item in the quickfix list
    - `:col[der]` or `:cnew[er]` go to other quickfix list.
        - Data structure of quickfix is "Stack" like "git stash" or "python list". These lists are stacked in the order they are created.
            - Last In First Out (LIFO) is chacrateristic of "Stack".
        - Vim retain up to 10 quickfix lists in a session.
    - `:cdo s/foo/boo` is used to substitute words `foo` to `boo` in files of quickfilx list

- Location list
    - It create a location list instead of quickfix list.
    - This behaves like quickfix list. But it can be created as many panes as are enalbled in a session. But quickfix list can be created as one.
        For example, if you have 3 activated panes, you can create 3 `location list`. But you can creat only one in a session. 
    - `:lv[imgrep] {pattern} {file}` add lists to to location list as quickfix list behaves.
    - `:lopen` opens a window to show the current list of searching patters.
    - `:lne[xt]`, `:lprev`, `:lfirst`, `:llast` are used navigate files in the location list
    - `:ll N` is used to navigate Nth item in the location list
    - `:lol[der]` or `:lnew[er]` go to other location list.
        - Data structure: "Stack"
        - Vim retain up to 10 location lists per window (or pane)
    - `:ldo` behaves like `:cdo`

- Registers
    - The Vim registers are similar to the clipboard.
    - When you yanked or deleted texts, you can paste them to somewhere.
    - Vim saves these texts to registers.
    - There are 10 knds of registers.
        1. Unnamed register (`""`)
            - Texts deleted with `d,s,c,x` or copied with `y` are saved here at First.
        2. Numbered registers (`"0 -"9`)
            - `"0` is for the last yanked texts.
            - `"1` is for the last deleted texts more than one line with `d,s,c`. 
            - `"2 - "9` are the backup place for `"1`. Vim moves `1` into `2`, `2` into `3`, and so forth. 
        3. Named registers (`"a - "z` or `"A - "Z`)
            - This registers can be allocated by only user command.
            - "Macro" will be saved in this registers.
            - Use lowercase to replace previous contents with new contetns.
            - Use uppercase to add new contents to previous contents.
        4. Small delete register (`"-`)
            - Deleted texts less than one line
        5. Selection registers (`"+ , "*`) 
            - Texts copied from external program are saved in this registers.
            - You can export texts from Vim to external clipboard with `"+y` or `"+d` 
        6. Read-only registers (`". , ": , "%`)
            - `".` saves the last inserted texts after `Insert Mode` is activated.
            - `":` saves the last executed command-line.
            - `"%` saves the name of current buffer (file name).
        7. Alternate buffer register (`"#`)
            - This register saves the alternate buffer, which is the last loaded file but not displayed in the window.
            - "#" is the indicator of the last loaded buffer.
        8. Search patter register (`"/`)
            - This register saved the last search pattern.
        9. Expression register (`"=`)
            - This register support mathmatical calculation.
            - `:h expression-syntax` explains various types ofxpressions.
        10. Black hole register (`"_`)
            - When you delete or change, Vim automatically save texts into registers. When you don't want to save, Just use this register.
            - `"_dd` doesn't store anything into register.  
    - You can clean up the resister `a` with `:let @a=""`
        - `:call range(0,9)->jap('setreg(v:val,"")')` delete registers of `0-9`.
        - `:call range(0,26)->map('setreg(@z[v:val],"")')` delet registers of `a-x`.
            - I saved `a-x` to register `z`.

- Macro
    - `q{a - z}` in Normal Mode to start recording.
        - `recroding @a` will be shown. 
    - `q` in Normal mode to stop recording.
    - `N@a` execute the macro as `N` times.

- Book Marks
    - `m{a - z}` : Save book mark at current cursor location.
    - ` '{a - z}` : Move to line of the book mark.
    - `` `{a - z}``: Move to the postion of the book mark.
    - `:delmarks!` : Delete all lowercase marks for the current buffer. 

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
