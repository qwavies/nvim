return {
   "catgoose/nvim-colorizer.lua",
   event = "BufReadPre",
   opts = {
      user_default_options = {
         names = false,
         rgb_fn = true,
      }
   },
}

-- NOTE: should colorize :)
-- "#000000"
-- "#ffffff"
-- "#cfd3ff"

-- NOTE: shouldn't colorize bc random colors might show up in a non CSS setting or something similar
-- "White"
-- "blue"
-- "Red"
