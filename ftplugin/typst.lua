vim.opt_local.wrap = false

vim.keymap.set("n", "<leader>h", "<cmd>Markview toggle<CR>", { buffer = true, desc = "Toggles markview"})
vim.keymap.set("n", "<leader>l", "<cmd>Markview splitToggle<CR>", { buffer = true, desc = "Toggles markview split"})
