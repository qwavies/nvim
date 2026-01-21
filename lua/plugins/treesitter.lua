local treesitter = {
  "nvim-treesitter/nvim-treesitter",
  lazy = false,
  build = ":TSUpdate",
  opts = {
    auto_install = true,
    ensure_installed = {
      "lua",
      "python",
      "c",
      "cpp",
      "rust",
      "java",
      "kotlin",
      "javascript",
      "typescript",
      "tsx",
      "go",
      "html",
      "css",
      "json",
      "jsonc",
      "toml",
      "bash",
      "markdown",
      "markdown_inline",
      "yaml",
      "sql",
      "xml",
      "vimdoc",
      "comment",
      "make",
      "cmake",
      "regex",
      "diff",
      "vim",
      "git_config",
      "git_rebase",
      "gitcommit",
      "gitignore",
      "gitattributes",
    },
  }
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
