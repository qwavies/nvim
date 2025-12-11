-- return {}

return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "frappe", -- latte, frappe, macchiato, mocha
      transparent_background = true,

      styles = {
        comments = {},
        conditionals = {},
      },

      custom_highlights = function(colors)
        return {
          Comment = {
            fg = "#BBBBBB",
            bg = "#606060",
            style = {},
          },

          Visual = {
            bg = "#535466",
            style = {},
          },

          YankHighlight = {
            fg = colors.base,
            bg = "#cfd3ff",
          },

          LineNrAbove = { fg = "#BBBBBB" },
          LineNrBelow = { fg = "#BBBBBB" },
          LineNr = {
            fg = "#cfd3ff",
            bold = true
          },

          FloatBorder = { fg = "#cfd3ff", bg = "None" },
          NormalFloat = { bg = "#444444" },
          TelescopeNormal = { fg = "None", bg = "None" },
          TelescopeBorder = { fg = "#cfd3ff", },
          Pmenu = { bg = "#444444" },
          PmenuSel = { bg = "#535466" },
          PmenuBorder = { bg = "#cfd3ff" },

          -- NotifyBackground = { bg = "#444444" },

          WinSeparator = { fg = "#cfd3ff" },

          LspInlayHint = {
            fg = "#BBBBBB",
            bg = "#606060",
          },

          TreesitterContextBottom = { style = {} },

          GitSignsAddNr = {
            fg = colors.green,
            style = { "bold" },
          },

          GitSignsChangeNr = {
            fg = colors.peach,
            style = { "bold" },
          },
          GitSignsDeleteNr = {
            fg = colors.red,
            style = { "bold" },
          },

          GitSignsStagedAddNr = {
            fg = "#66A23F",
            style = { "bold" },
          },

          GitSignsStagedChangeNr = {
            fg = "#E56424",
            style = { "bold" },
          },
          GitSignsStagedDeleteNr = {
            fg = "#CE272A",
            style = { "bold" },
          },
        }
      end,
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
