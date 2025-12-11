return {
  "numToStr/Comment.nvim",
  event = "VeryLazy",
  opts = {
    padding = true,
    sticky = true,
    ignore = nil,

    toggler = {
      line = "<leader>/",
      block = "<leader>?",
    },
    ---LHS of operator-pending mappings in NORMAL and VISUAL mode
    opleader = {
      line = "<leader>/",
      block = "<leader>?",
    },
    ---Enable keybindings
    ---NOTE: If given `false` then the plugin won"t create any mappings
    mappings = {
      ---Operator-pending mapping; `gcc` `gbc` `gc[count]{motion}` `gb[count]{motion}`
      basic = true,
      ---Extra mapping; `gco`, `gcO`, `gcA`
      extra = false,
    },
    pre_hook = nil,
    post_hook = nil,
  }
}
