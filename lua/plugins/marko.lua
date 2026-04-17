vim.pack.add({"https://github.com/developedbyed/marko.nvim"})

require("marko").setup({
  border = "rounded",
  title = "  Jump to:  ",

  navigation_mode = "direct",
  -- navigation_mode = "popup",
})
