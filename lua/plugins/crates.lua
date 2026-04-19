vim.pack.add({"https://github.com/saecki/crates.nvim"})

vim.api.nvim_create_autocmd("BufRead", {
  once = true,
  pattern = "Cargo.toml",
  callback = function()
    require("crates").setup()
  end
})
