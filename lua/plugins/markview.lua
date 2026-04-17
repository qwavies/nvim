vim.pack.add({"https://github.com/OXY2DEV/markview.nvim"})

require("markview").setup({
  markdown = {
    code_blocks = { sign = false },
    headings = {
      enable = false,
    }
  },
})

--   -- event = "BufRead *.md",
