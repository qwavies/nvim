return {
   "catppuccin/nvim",
   name = "catppuccin",
   priority = 1000,
   config = function()
      require("catppuccin").setup({
         flavour = "frappe", -- latte, frappe, macchiato, mocha
         transparent_background = true,

         no_italic = false,
         no_bold = false,
         no_underline = false,
         styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
            comments = {}, -- Change the style of comments
            conditionals = {},
            loops = {},
            functions = {},
            keywords = {},
            strings = {},
            variables = {},
            numbers = {},
            booleans = {},
            properties = {},
            types = {},
            operators = {},
         },

         -- NOTE: CUSTOM HIGHLIGHTS HERE
         custom_highlights = function(colors)
            return {
               Comment = {
                  fg = "#BBBBBB",
                  bg = "#606060",
                  -- style = { "italic" },
               },
               Visual = {
                  -- bg = "#606a6b",
                  bg = "#535466",
                  style = {},
               },

               LineNrAbove = { fg = "#BBBBBB" },
               LineNrBelow = { fg = "#BBBBBB" },
               LineNr = {
                  fg = "#cfd3ff",
                  bold = true
               },


               -- FloatBorder = { fg = "#cfd3ff" },
               NormalFloat = { bg = "#444444" },
               TelescopeNormal = { fg = "None", bg = "None"},
               TelescopeBorder = {
                  fg = "#cfd3ff",
                  -- bg = "#444444",
               },
               Pmenu = { bg = "#444444" },
               PmenuSel = { bg = "#535466"},
               PmenuBorder = { bg = "#cfd3ff"},

               -- NotifyBackground = { bg = "#444444" },

               WinSeparator = { fg = "#cfd3ff"},


               -- -- Override specific syntax groups
               -- ["@variable"] = { fg = colors.text },
               -- ["@function"] = { fg = colors.blue },
               -- ["@keyword"] = { fg = colors.mauve, style = { "italic" } },
               -- ["@string"] = { fg = colors.green },
               -- ["@number"] = { fg = colors.peach },
               -- ["@boolean"] = { fg = colors.peach },
               -- ["@type"] = { fg = colors.yellow },
               -- ["@constant"] = { fg = colors.peach },
               -- -- LSP highlights
               -- ["@lsp.type.class"] = { fg = colors.yellow },
               -- ["@lsp.type.decorator"] = { fg = colors.mauve },
               -- ["@lsp.type.enum"] = { fg = colors.yellow },
               -- ["@lsp.type.enumMember"] = { fg = colors.teal },
               -- ["@lsp.type.function"] = { fg = colors.blue },
               -- ["@lsp.type.interface"] = { fg = colors.yellow },
               -- ["@lsp.type.macro"] = { fg = colors.teal },
               -- ["@lsp.type.method"] = { fg = colors.blue },
               -- ["@lsp.type.namespace"] = { fg = colors.yellow },
               -- ["@lsp.type.parameter"] = { fg = colors.maroon },
               -- ["@lsp.type.property"] = { fg = colors.teal },
               -- ["@lsp.type.struct"] = { fg = colors.yellow },
               -- ["@lsp.type.type"] = { fg = colors.yellow },
               -- ["@lsp.type.typeParameter"] = { fg = colors.maroon },
               -- ["@lsp.type.variable"] = { fg = colors.text },
               -- -- Plugin-specific highlights
               -- TelescopeNormal = { bg = colors.mantle },
               -- TelescopeBorder = { fg = colors.blue },
               -- TelescopePromptNormal = { bg = colors.surface0 },
               -- TelescopePromptBorder = { fg = colors.surface0, bg = colors.surface0 },
               -- TelescopePromptTitle = { fg = colors.pink },
               -- TelescopePreviewTitle = { fg = colors.green },
               -- TelescopeResultsTitle = { fg = colors.lavender },
               -- -- NvimTree highlights
               -- NvimTreeNormal = { bg = colors.mantle },
               -- NvimTreeFolderIcon = { fg = colors.blue },
               -- NvimTreeRootFolder = { fg = colors.pink },
               -- NvimTreeSpecialFile = { fg = colors.yellow },
               -- NvimTreeExecFile = { fg = colors.green },
               -- NvimTreeOpenedFile = { fg = colors.pink },
               -- -- Lualine integration (if using lualine)
               -- -- These will be automatically applied if lualine integration is enabled
            }
         end,
         integrations = {
            cmp = true,
            gitsigns = true,
            nvimtree = true,
            treesitter = true,
            notify = false,
            mini = {
               enabled = true,
               indentscope_color = "",
            },
            -- Add other integrations as needed
            telescope = {
               enabled = true,
               -- style = "nvchad"
            },
            lsp_trouble = true,
            which_key = true,
            indent_blankline = {
               enabled = true,
               colored_indent_levels = false,
            },
            native_lsp = {
               enabled = true,
               virtual_text = {
                  -- errors = { "italic" },
                  -- hints = { "italic" },
                  -- warnings = { "italic" },
                  -- information = { "italic" },
                  errors = {},
                  hints = {},
                  warnings = {},
                  information = {},
               },
               underlines = {
                  errors = { "underline" },
                  hints = { "underline" },
                  warnings = { "underline" },
                  information = { "underline" },
               },
            },
         },
      })

      vim.cmd.colorscheme("catppuccin")
   end,
}
