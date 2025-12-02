return {
   "nvim-telescope/telescope.nvim",
   dependencies = { "nvim-lua/plenary.nvim" },
   config = function()
      require("telescope").setup({
         defaults = {
            -- initial_mode = "normal",
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
   end
}
