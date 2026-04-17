vim.pack.add({"https://github.com/catgoose/nvim-colorizer.lua"})

require("colorizer").setup({
  options = {

    parsers = {
      names = { enable = false },
      hex = { default = true },
      css_fn = true,
      tailwind = {
        enable = true,
        lsp = true,
        update_names = true,
      }
    },

    display = {
      mode = "virtualtext",
      virtualtext = {
        char = "",
        position = "before",
      }
    }

  }
})
