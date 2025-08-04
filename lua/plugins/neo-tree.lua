return {
   "nvim-neo-tree/neo-tree.nvim",
   lazy = false,
   dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons",
   },
   config = function()
      require("neo-tree").setup({
         filesystem = {
            use_libuv_file_watcher = true,
            hijack_netrw_behavior = "open_default",
         },
         default_component_configs = {
            git_status = {
               symbols = {
                  added = "✚",
                  modified = "",
                  deleted = "✖",
                  renamed = "󰑏",
                  unstaged = "󱕥",
                  staged = "󰓎",
                  conflict = "",
                  ignored = "",
               }
            }
         }
      })
   end
}
