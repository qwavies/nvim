return {
  "rcarriga/nvim-notify",
  config = function ()
    require("notify").setup({
      stages = "static", -- fade, slide, static
      timeout = 3500, -- ms
      merge_duplicates = true,
      -- background_colour = "normal",

      icons = {
        error = "",
        warn  = "",
        info  = "",
        debug = "",
        trace = "✎",
      },

      minimum_width = 5,
      max_width = 50,
      max_height = 6,
      render = "minimal", -- minimal, compact
      top_down = true,
    })
    vim.notify = require("notify")
    vim.print = function(...)
      local args = {...}
      local message = table.concat(
        vim.tbl_map(function(v)
          return type(v) == "table" and vim.inspect(v) or tostring(v)
        end, args),
        " "
      )
      require("notify")(message, vim.log.levels.INFO)
    end
  end
}
