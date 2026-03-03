return {
  "catgoose/nvim-colorizer.lua",
  event = "BufReadPre",
  opts = {
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
  },
}

-- should colorize :)
-- "#000000"
-- "#ffffff"
-- "#cfd3ff"
-- rgb(255, 0, 0)

-- shouldn't colorize bc random colors might show up in a non CSS setting or something similar
-- "White"
-- "blue"
-- "Red"
