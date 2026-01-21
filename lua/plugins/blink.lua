return {
  {
    "saghen/blink.cmp",
    event = { "InsertEnter", "CmdlineEnter" },
    version = "1.*",
    opts = {
      keymap = {
        preset = "default",
        ["<C-j>"] = { "select_next", "fallback" },
        ["<C-k>"] = { "select_prev", "fallback" },
        ["<Tab>"] = { "select_and_accept", "fallback" },
        ["<CR>"] = { "select_and_accept", "fallback" },
      },

      sources = {
        default = {
          "lsp",
          "path",
          -- "snippets",
          "buffer",
        },
        providers = {
          buffer = {
            min_keyword_length = 1,
            max_items = 20,
            score_offset = -2,
          },
          lsp = {
            fallbacks = {} -- stops buffer suggestions from not showing up when there are lsp suggestions
          },
        }
      },

      cmdline = {
        keymap = {
          preset = "inherit",
          ["<CR>"] = { "fallback" }, -- stops having to press enter twice
        },
        completion = { menu = { auto_show = true } }
      },

      completion = {
        list = {
          selection = {
            preselect = false,
          },
        },
        ghost_text = {
          enabled = true,
          show_without_selection = true,
        },
        documentation = {
          auto_show  = true,
          auto_show_delay_ms = 0,
          treesitter_highlighting = false,
        },
        menu = {
          draw = {
            columns = {
              {
                "label",
                "label_description",
                gap = 0
              },
              {
                "kind",
                -- "kind_icon",
              }
            },
          },
        },
      },

      signature = {
        enabled = true,
      },
    },
  },
}
