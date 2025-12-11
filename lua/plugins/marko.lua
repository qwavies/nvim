return {
  "developedbyed/marko.nvim",
  event = "VeryLazy",
  config = function()
    require("marko").setup({
      border = "rounded",
      title = "  Jump to:  ",

      navigation_mode = "direct",
      -- navigation_mode = "popup",
    })
  end,
}
