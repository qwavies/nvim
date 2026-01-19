<h1 align="center">The qwavies Neovim Config</h1>

## Showcase
TODO

## Requirements

- Neovim 0.11.0 or higher

## Installation

`git clone` this repository into your neovim config.

> [!TIP]
> On **Linux/MacOS**, the default path is `~/.config/nvim/`
>
> On **Windows**, the default path is `~/AppData/Local/nvim/`
>
> Otherwise, you can run `:echo stdpath("config")` inside of Neovim to find the config path

1. Backup your current Neovim (if it exists)
    - `cp -r NEOVIM_CONFIG_PATH nvim_backup`
2. Clone this repo into your system
    - `git clone https://github.com/qwavies/nvim NEOVIM_CONFIG_PATH`

## Config Structure

```
~/.config/nvim
├── lua
│   ├── config
│   │   ├── lazy.lua (where lazy.nvim is loaded)
│   │   ├── autocmds.lua (put autocommands here)
│   │   └── keymaps.lua (put keymaps here)
│   └── plugins
│       ├── plugin1.lua
│       ├── plugin2.lua
│       └── *** (all plugins here are auto-loaded)
├── ftplugin
│   ├── markdown.lua
│   ├── lua.lua
│   ├── html.lua
│   └── *** (language-specific settings go here)
└── init.lua (config entry point)
```

## Plugin List

### Editing Support

- [nvim-autopairs](https://github.com/windwp/nvim-autopairs) (Auto-close brackets)
- [nvim-ts-autotag](https://github.com/windwp/nvim-ts-autotag) (Auto-renames closing tags)
- [cmp](https://github.com/hrsh7th/nvim-cmp) (Autocomplete suggestions)
  - [cmp-lsp](https://github.com/hrsh7th/cmp-nvim-lsp) (LSP support)
  - [cmp-buffer](https://github.com/hrsh7th/cmp-buffer) (Pre-existing word support)
  - [cmp-path](https://github.com/hrsh7th/cmp-path) (System Path support)
  - [cmp-cmdline](https://github.com/hrsh7th/cmp-cmdline) (Command Line support)
- [comment.nvim](https://github.com/numToStr/Comment.nvim) (Auto-comment toggle)
- [smart-backspace.nvim](https://github.com/qwavies/smart-backspace.nvim) (Hey, I made this one! Check it out :grin:)

### Additional Info
- [crates.nvim](https://github.com/saecki/crates.nvim) (Shows latest versions of rust crates)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) (Shows git diffs in the number lines)

### Navigation

- [flash.nvim](https://github.com/folke/flash.nvim) (Instantly jump to anywhere in a buffer)
- [marko.nvim](https://github.com/developedbyed/marko.nvim) (More responsive and visual marks)
- [yazi.nvim](https://github.com/mikavilpas/yazi.nvim) (Support for [Yazi](https://yazi-rs.github.io/) file manager)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) (Fuzzy-finder/picker)

### Aesthetics

- [catppuccin](https://github.com/catppuccin/nvim) (Colorscheme)
- [which-key.nvim](https://github.com/folke/which-key.nvim) (Shows available keybindings)
- [alpha-nvim](https://github.com/goolord/alpha-nvim) (Greeter/Dashboard)
- [colorizer](https://github.com/catgoose/nvim-colorizer.lua) (Hex/CSS color highlighter)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) (Draws lines to show current indentation)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) (Custom status bar)
- [noice.nvim](https://github.com/folke/noice.nvim) (Non-invasive notifications)
- [smear-cursor.nvim](https://github.com/sphamba/smear-cursor.nvim) (Large jumps leaves a trail for better visibility)
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim) (Highlights TODOs, BUGs, etc.)
- [markview.nvim](https://github.com/OXY2DEV/markview.nvim) (Better markdown rendering)

### LSP and Treesitter

- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) (Pre-configured LSP server configurations)
- [mason.nvim](https://github.com/mason-org/mason.nvim) (Package manager for LSPs)
    - [mason-lspconfig.nvim](https://github.com/mason-org/mason-lspconfig.nvim) (Bridge for [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) and [mason.nvim](https://github.com/mason-org/mason.nvim))
- [lazydev.nvim](https://github.com/folke/lazydev.nvim) (Configures the LuaLS LSP for Neovim development)
- [tree-sitter](https://github.com/tree-sitter/tree-sitter) (Better syntax parsing)
    - [tree-sitter-context](https://github.com/nvim-treesitter/nvim-treesitter-context) (Shows current class/function/scope)

