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

-- links nvim clipboard with system clipboard
vim.opt.clipboard = "unnamedplus"

-- set tabs to 3 spaces
local tab_size = 3
vim.opt.expandtab = true
vim.opt.tabstop = tab_size
vim.opt.shiftwidth = tab_size
vim.opt.softtabstop = tab_size

-- smart case search with "/"
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- disables annoying swap
vim.opt.swapfile = false

-- gives a visualisation for text replacement ":%s/<TEXT>/<REPLACEMENT>/<MODIFIERS>"
vim.opt.inccommand = "split"

-- replaces the "~" on left sidebar with nothing
vim.opt.fillchars = { eob = " " }

-- disables nvims inbuilt status bar (replacing with lualine) and makes status bar flush with bottom
vim.opt.cmdheight = 0
vim.opt.showmode = false

-- load custom colorscheme
require("config.colorscheme")

-- start lazy (and all other plugins)
require("config.lazy")

-- source after everything else
vim.schedule(function()
   require("config.keymaps")
   require("config.autocmds")
end)
