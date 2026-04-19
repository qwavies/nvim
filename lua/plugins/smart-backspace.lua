vim.pack.add({"https://github.com/qwavies/smart-backspace.nvim"})

vim.api.nvim_create_autocmd({ "InsertEnter", "CmdlineEnter" }, {
  once = true,
  callback = function()
    require("smart-backspace").setup()
  end
})
