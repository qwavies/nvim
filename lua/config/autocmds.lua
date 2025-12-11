-- NOTE: highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank({ higroup = "YankHighlight", timeout = 300 })
  end,
})

-- NOTE: removes autocommenting
vim.api.nvim_create_autocmd({"BufRead", "LspAttach"}, {
  desc = "Disables autocommenting",
  callback = function()
    vim.opt.formatoptions:remove({ 'r', 'o' })
  end,
})
