vim.pack.add({
  "https://github.com/OXY2DEV/markview.nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

require("markview").setup({
  preview = {
    enable = true,
    enable_hybrid_mode = true,
    linewise_hybrid_mode = false,
    icon_provider = "devicons",
    filetypes = { "markdown", "typst" },
    hybrid_modes = { "n" },
    edit_range = { 0, 0 },
  },

  markdown = {
    code_blocks = { sign = false },
    headings = {
      enable = false,
    }
  },
})
