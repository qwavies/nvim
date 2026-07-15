vim.pack.add({"https://github.com/nvim-treesitter/nvim-treesitter"})

require("nvim-treesitter").setup({
  install_dir = vim.fn.stdpath("data") .. "/site"
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "<filetype>" },
  callback = function()
    vim.treesitter.start()
  end,
})

require("nvim-treesitter").install({
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
  "toml",
  "bash",
  "markdown",
  "markdown_inline",
  "typst",
  "latex",
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
}):wait(300000) -- max. 5 minutes
