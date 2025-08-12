return {
   "nvim-lualine/lualine.nvim",
   dependencies = { "nvim-tree/nvim-web-devicons" },
   config = function()
      require("lualine").setup {
         options = {
            icons_enabled = true,
            theme = "auto",
            -- component_separators = { left = "", right = ""},
            component_separators = { left = "", right = ""},
            section_separators = { left = "", right = ""},
            disabled_filetypes = {
               statusline = {},
               winbar = {},
            },
            ignore_focus = {},
            always_divide_middle = true,
            always_show_tabline = false,
            globalstatus = true,
            refresh = {
               statusline = 1000,
               tabline = 1000,
               winbar = 1000,
               refresh_time = 16, -- ~60fps
               events = {
                  "WinEnter",
                  "BufEnter",
                  "BufWritePost",
                  "SessionLoadPost",
                  "FileChangedShellPost",
                  "VimResized",
                  "Filetype",
                  "CursorMoved",
                  "CursorMovedI",
                  "ModeChanged",
                  "RecordingEnter", -- start macro
                  "RecordingLeave", -- leave macro
               },
            }
         },
         sections = {
            lualine_a = {"mode"},
            lualine_b = {
               "branch",
               "diff",
               -- "diagnostics"
            },
            lualine_c = {},
            -- lualine_c = {"filename"},
            lualine_x = {
               -- NOTE: Add partial commands here
               function() -- function to show recording macro
                  local recording = vim.fn.reg_recording()
                  if recording ~= "" then
                     return "recording @" .. recording
                  end
                  return ""
               end,
					{
						"diagnostics",
						symbols = { error = " ", warn = " ", info = " ", hint = " " },
						update_in_insert = true,
					},
               "lsp_status",
            },
            -- lualine_y = {"progress"},
            lualine_y = {"filename"},
            lualine_z = {{"location", icon = ""}},
         },
         tabline = {},
         winbar = {},
         inactive_winbar = {},
         extensions = {}
      }
   end,
}

