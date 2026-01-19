return {
  "OXY2DEV/markview.nvim",
  event = "BufRead *.md",
  opts = {
    markdown = {
      code_blocks = { sign = false },
      headings = {
        enable = false,
      }
    },
  }
}
