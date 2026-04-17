vim.pack.add({"https://github.com/lewis6991/gitsigns.nvim"})

require("gitsigns").setup({
  signcolumn = false,  -- Disable sign column
  numhl      = true,   -- Enable line number highlighting
  linehl     = false,
  word_diff  = false,
})
