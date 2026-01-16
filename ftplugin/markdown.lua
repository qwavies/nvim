local tab_size = 2

vim.opt_local.shiftwidth = tab_size
vim.opt_local.tabstop = tab_size

vim.opt.wrap = false

vim.keymap.set("n", "<leader>h", "<cmd>Markview toggle<CR>", { buffer = true, desc = "Toggles markview"})
