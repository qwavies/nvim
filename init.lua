vim.g.mapleader = " "

-- enables relative numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- enables persistent undos
vim.opt.undofile = true

-- number of lines away from bottom/top of the page from the cursor
vim.opt.scrolloff = 6

-- enable line wrapping
vim.opt.wrap = true
vim.opt.linebreak = true

-- disables signcolumn
vim.opt.signcolumn = "no"

-- set default tabs to 4 spaces
-- will be overriden if a specific file type is read from ./ftplugin/
local tab_size = 4
vim.opt.expandtab = true
vim.opt.tabstop = tab_size
vim.opt.shiftwidth = tab_size
vim.opt.softtabstop = tab_size

-- smart case search with "/"
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- disables annoying swap
vim.opt.swapfile = false

-- set new split directions
vim.opt.splitright = true
vim.opt.splitbelow = true

-- gives a visualisation for text replacement ":%s/<TEXT>/<REPLACEMENT>/<MODIFIERS>"
vim.opt.inccommand = "split"

-- replaces the "~" on left sidebar with nothing
vim.opt.fillchars = { eob = " " }

-- disables nvims inbuilt status bar (replacing with lualine) and makes status bar flush with bottom
vim.opt.cmdheight = 0
vim.opt.showmode = false

-- load custom colorscheme
-- require("config.colorscheme")

-- start lazy (and all other plugins)
require("config.lazy")

-- source autocmds
require("config.autocmds")

-- source after everything else
vim.schedule(function()
  -- source keymaps
  require("config.keymaps")

  -- links nvim clipboard with system clipboard
  vim.opt.clipboard = "unnamedplus"
end)
