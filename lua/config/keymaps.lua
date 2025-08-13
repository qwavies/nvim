-- -----------------------
-- Different key mappings
-- -----------------------

-- vim.g.mapleader = " "

-- Telescope mappings
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>", { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope lsp_references<CR>", { desc = "Telescope find references - LSP" })
vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>", { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fw", "<cmd>Telescope buffers<CR>", { desc = "Telescope find buffer" })
vim.keymap.set("n", "<leader>fe", "<cmd>Telescope diagnostics<CR>", { desc = "Telescope find errors - LSP" })
vim.keymap.set("n", "<leader>fn", "<cmd>Telescope noice<CR>", { desc = "Telescope browse notifications" })
vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<CR>", { desc = "Telescope view git status" })

-- NeoTree mappings
vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<CR>", { desc = "Opens NeoTree" })

-- move chunks of text up/down within the file
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "move text down by chunk" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "move text up by chunk" })

-- move down/up the page and recentre the cursor to the middle of the screen
-- same with search terms, and paragraph
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "page down" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "page up" })
vim.keymap.set("n", "n", "nzzzv", { desc = "go to next occurrence" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "go to previous occurrence" })
vim.keymap.set("n", "}", "}zz", { desc = "jump backwards by paragraph" })
vim.keymap.set("n", "{", "{zz", { desc = "jump forwards by paragraph" })

-- <leader>p to paste without overwriting current buffer
vim.keymap.set("x", "<leader>p", "\"_dP", { desc = "paste without overwriting current buffer" })

-- replaces the currently selected word in the entire file
vim.keymap.set(
   "n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
   { desc = "replace selected word in the entire file" }
)

-- disables capital D
vim.keymap.set("n", "D", "<nop>", { desc = "" })

-- disables the wretched Q
vim.keymap.set("n", "Q", "<nop>", { desc = "" })

-- exit insert mode using "jk"
-- vim.keymap.set("i", "jk", "<ESC>", { desc = "exit insert mode" })

-- TODO: Add smart backspace that removes all whitespace behind it (like in intellij)
