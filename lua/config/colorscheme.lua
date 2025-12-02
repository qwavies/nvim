-- experimental, many things don't work properly such as the lualine transparency
-- also need to disable the catppuccin colorscheme
local toggled = false

local M = {}

-- TODO:
-- lualine
-- markdown

-- Error
-- Todo

-- Yazi border
-- notifly colors


local function apply_color(name, val)
   if toggled then
      vim.api.nvim_set_hl(0, name, val)
   end
end

-- NOTE: catppuccin frappe colors
local rosewater = "#f2d5cf"
local flamingo = "#eebebe"
local pink = "#f4b8e4"
local mauve = "#ca9ee6"
local red = "#e78284"
local maroon = "#ea999c"
local peach = "#ef9f76"
local yellow = "#e5c890"
local green = "#a6d189"
local teal = "#81c8be"
local sky = "#99d1db"
local sapphire = "#85c1de"
local blue = "#8caaee"
local lavender = "#babbf1"
local text = "#c6d0fc"
local subtext1 = "#b5bfe2"
local subtext0 = "#a5adce"
local overlay2 = "#949cbb"
local overlay1 = "#838ba7"
local overlay0 = "#737994"
local surface2 = "#626880"
local surface1 = "#51576d"
local surface0 = "#414559"
local base = "#303446"
local mantle = "#292c3c"
local crust = "#232634"

-- NOTE: other commonly used colors
local highlight = "#cfd3ff"
local background = "#444444"
local unselected = "#BBBBBB"
local comment_bg = "#606060"
local visual_bg = "#535466"

-- make background transparent
apply_color("Normal", { fg = text, bg = "None" })

-- apply color to floating windows
apply_color("NormalFloat", { bg = background })
apply_color("FloatBorder", { fg = highlight, bg = "None" })

-- Completion menu
apply_color("Pmenu", { bg = background })
apply_color("PmenuSel", { bg = visual_bg })
apply_color("PmenuBorder", { bg = highlight })

-- Comments
apply_color("Comment", {
   fg = unselected,
   bg = comment_bg,
   -- italic = true,
})

-- Visual Selection
apply_color("Visual", {
   bg = visual_bg,
   -- bold = true,
})

-- Matching Bracket
apply_color("MatchParen", { fg = peach, bg = surface0, bold = true })

-- Highlight on Yank
apply_color("YankHighlight", { fg = base, bg = highlight })

-- Line Numbers and Sign Column (on the left)
apply_color("LineNrAbove", { fg = unselected })
apply_color("LineNrBelow", { fg = unselected })
apply_color("LineNr", { fg = highlight, bold = true })
apply_color("SignColumn", { fg = highlight })

-- Pane split highlight
apply_color("WinSeparator", { fg = highlight })

-- Search highlight
apply_color("Search", { fg = text, bg = background })
apply_color("CurSearch", { fg = text, bg = unselected })
apply_color("IncSearch", { fg = text, bg = unselected })

-- Telescope 
apply_color("TelescopeBorder", { fg = highlight })
-- apply_color("TelescopeNormal", {})
-- apply_color("TelescopePromptNormal", {})
-- apply_color("TelescopePromptBorder", {})
-- apply_color("TelescopePromptTitle", {})
-- apply_color("TelescopePreviewTitle", {})
-- apply_color("TelescopeResultsTitle", {})

-- Language Features
apply_color("Keyword",     { fg = mauve })
apply_color("Identifier",  { fg = flamingo })
apply_color("Function",    { fg = blue })
apply_color("Constant",    { fg = peach })
apply_color("Delimiter",    { fg = subtext0 })
apply_color("String",      { fg = green })
apply_color("Character",   { fg = green })
apply_color("Number",      { fg = peach })
apply_color("Boolean",     { fg = peach })
apply_color("Statement",   { fg = mauve })
apply_color("Conditional", { fg = mauve })
apply_color("Repeat",      { fg = mauve })
apply_color("Label",       { fg = mauve })
apply_color("Operator",    { fg = sky })
-- apply_color("PreProc", {})
-- apply_color("Include", {})
-- apply_color("Define", {})
-- apply_color("Macro", {})
-- apply_color("Types", {})
-- apply_color("StorageClass", {})
-- apply_color("Structure", {})
-- apply_color("Typedef", {})

-- Treesitter
apply_color("@variable", { fg = text })
apply_color("@punctuation.brackets", { fg = subtext0 })
apply_color("@punctuation.delimiter", { fg = subtext0 })
apply_color("@function", { fg = blue })
apply_color("@function.builtin", { fg = peach })
-- apply_color("@keyword", {})
-- apply_color("@string", {})
-- apply_color("@comment", {})
-- apply_color("@type", {})
-- apply_color("@constant", {})
apply_color("@constructor", { fg = subtext0 })

-- Lualine
function M.get_lualine_colorscheme()
   return {
      normal = {
         a = { fg = surface0, bg = blue, gui = "bold" },
         b = { fg = blue, bg = surface0 },
         c = { fg = text }
      },
      insert = {
         a = { fg = surface0, bg = blue, gui = "bold" },
         b = { fg = blue, bg = surface0 },
         c = { fg = text }
      },
      visual = {
         a = { fg = surface0, bg = blue, gui = "bold" },
         b = { fg = blue, bg = surface0 },
         c = { fg = text }
      },
      replace = {
         a = { fg = surface0, bg = blue, gui = "bold" },
         b = { fg = blue, bg = surface0 },
         c = { fg = text }
      },
      command = {
         a = { fg = surface0, bg = blue, gui = "bold" },
         b = { fg = blue, bg = surface0 },
         c = { fg = text }
      },
      inactive = {
         a = { fg = surface0, bg = blue, gui = "bold" },
         b = { fg = blue, bg = surface0 },
         c = { fg = text }
      }
   }
end

return M
