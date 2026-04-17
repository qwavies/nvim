vim.pack.add({
  "https://github.com/nvim-telescope/telescope.nvim",
  "https://github.com/nvim-lua/plenary.nvim",
})

require("telescope").setup({
  pickers = {
    colorscheme = {
      enable_preview = true,
    },
    find_files = {
      hidden = true,
    },
  },
  defaults = {
    -- initial_mode = "normal",

    file_ignore_patterns = { "^.git/", "^node_modules/" },
    mappings = {
      i = {
        ["qq"] = require("telescope.actions").close,
        ["<C-j>"] = require("telescope.actions").move_selection_next,
        ["<C-k>"] = require("telescope.actions").move_selection_previous,
      },
      n = {
        ["j"] = require("telescope.actions").move_selection_next,
        ["k"] = require("telescope.actions").move_selection_previous,
      }
    }
  }
})
