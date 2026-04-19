vim.pack.add({"https://github.com/OXY2DEV/markview.nvim"})

vim.api.nvim_create_autocmd("BufRead", {
  once = true,
  pattern = "*.md",
  callback = function()
    require("markview").setup({
      markdown = {
        code_blocks = { sign = false },
        headings = {
          enable = false,
        }
      },
    })
  end
})
