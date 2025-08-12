return {
  'goolord/alpha-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')

    dashboard.section.header.val = {
      "                                                     ",
      "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
      "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
      "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
      "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
      "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
      "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
      "                                                     ",
    }

    dashboard.section.buttons.val = {
      dashboard.button("i", "   > New File", "<cmd>ene<CR>"),
      dashboard.button("SPC f f", "   > Find File", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC f r", "   > Recent Files", "<cmd>Telescope oldfiles<CR>"),
      dashboard.button("SPC f g", "   > Live Grep", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("u", "   > Update Plugins", "<cmd>Lazy sync<CR>"),
      dashboard.button("q", "   > Quit", "<cmd>qa<CR>"),
    }

    dashboard.config.layout = {
      { type = "padding", val = 4 },
      dashboard.section.header,
      { type = "padding", val = 3 },
      dashboard.section.buttons,
      { type = "padding", val = 1 },
      dashboard.section.footer,
    }

    dashboard.section.header.opts.hl = "Function"
    dashboard.section.buttons.opts.hl = "Function"
    dashboard.section.footer.opts.hl = "Function"

    vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])

    alpha.setup(dashboard.config)
  end,
}
