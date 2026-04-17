vim.pack.add({"https://github.com/folke/flash.nvim"})

require("flash").setup({

  prompt = {
    prefix = {{ "󱐋 ", "FlashPromptIcon" }},
  },

  search = {
    mode = "fuzzy"
  },

  highlight = {
    backdrop = true
  },

  modes = {
    char = { jump_labels = true }
  }

})

vim.keymap.set({ "n", "x", "o" }, "s", function() require("flash").jump() end, { desc = "Flash" })
vim.keymap.set({ "n", "x", "o" }, "S", function() require("flash").treesitter() end, { desc = "Flash Treesitter" })
