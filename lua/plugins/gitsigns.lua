return {
   "lewis6991/gitsigns.nvim",
   event = { "BufReadPre", "BufNewFile" },
   opts = {
      signcolumn = false,  -- Disable sign column
      numhl      = true,   -- Enable line number highlighting
      linehl     = false,
      word_diff  = false,
   },
}
