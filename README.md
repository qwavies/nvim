<h1 align="center">My Neovim Config</h1>

## Showcase
<details>
    <summary>Splashscreen/Greeter</summary>
    <img width="1920" height="1080" alt="splashscreen" src="https://github.com/user-attachments/assets/6cd65809-e579-4c25-b7d2-a466b9483ea0" />
</details>
<details>
    <summary>General File Preview</summary>
    <img width="1920" height="1080" alt="lua-file" src="https://github.com/user-attachments/assets/f7fef401-1534-49c3-95fd-cbb24b966f26" />
    <img width="1920" height="1080" alt="rust-file" src="https://github.com/user-attachments/assets/31f84a32-91e6-4a08-984f-d925fbf300af" />
</details>
<details>
    <summary>Telescope</summary>
    <img width="1920" height="1080" alt="telescope-find-files" src="https://github.com/user-attachments/assets/df3c41fe-fac3-480b-bba8-c7e20ff90fcb" />
    <img width="1920" height="1079" alt="telescope-live-grep" src="https://github.com/user-attachments/assets/a3166292-17f8-44a4-9739-5705fc7135d5" />
</details>
<details>
    <summary>Notifications</summary>
    <img width="1920" height="1079" alt="notification" src="https://github.com/user-attachments/assets/26159cbf-55db-49ac-92da-77483c852013" />
</details>
<details>
    <summary>Yazi File Manager</summary>
    <img width="1920" height="1080" alt="yazi" src="https://github.com/user-attachments/assets/2af5102b-5c1d-43d4-b6a6-c6d5d86ada32" />
    <img width="1920" height="1080" alt="yazi-new-file" src="https://github.com/user-attachments/assets/5b72f4db-7f38-4407-9db2-69ff027a67f9" />
</details>
<details>
    <summary>Auto-complete</summary>
    <img width="1920" height="1080" alt="blink-cmp" src="https://github.com/user-attachments/assets/e5f9d3d7-b23d-4060-a10e-ec943fc87dfc" />
    <img width="1920" height="1080" alt="blink-cmp-documentation" src="https://github.com/user-attachments/assets/851f44cd-f148-46a2-b37e-3b61c2369577" />
</details>
<details>
    <summary>Lazy.nvim Start Times</summary>
    <img width="1920" height="1080" alt="start-time" src="https://github.com/user-attachments/assets/fee9723f-b863-442e-8a55-69109f4db674" />
</details>

## Requirements

- `Neovim 0.11.0+`
- Any `Nerd Font`
- `git`
- `tar`
- `curl`
- `yazi` (for [yazi.nvim](https://github.com/mikavilpas/yazi.nvim))
- `ripgrep` (**OPTIONAL:** for better live grep)
- `fd` (**OPTIONAL:** for better file search)
- `tree-sitter-cli 0.26.1+`
- Any `c compiler`
- `npm` (for some LSPs)



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
- [blink.cmp](https://github.com/saghen/blink.cmp) (Autocomplete suggestions)
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
- [nvim-colorizer](https://github.com/catgoose/nvim-colorizer.lua) (Hex/CSS color highlighter)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim) (Draws lines to show current indentation)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) (Custom status bar)
- [nvim-notify](https://github.com/rcarriga/nvim-notify) (Non-invasive notifications)
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

