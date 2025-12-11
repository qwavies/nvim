local treesitter = {
  "nvim-treesitter/nvim-treesitter",
  event = "BufEnter",
  branch = 'master',
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
    })
  end
}

local treesitter_context = {
  "nvim-treesitter/nvim-treesitter-context",
  event = "BufEnter",
  dependencies = treesitter,
  opts = {
    enable = true,
    max_lines = 1,
    line_numbers = true,
    mode = "cursor",
  }
}

return treesitter_context
