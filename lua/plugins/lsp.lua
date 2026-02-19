local autoinstalled_servers = {
  -- NOTE: add new servers here.
  -- Will be installed automatically

  -- lua
  -- "lua_ls",
  "lua_ls@3.16.4", -- WARN: downgrade as latest luaLS version does not index lazydev properly

  -- python
  "pyright",

  -- c, c++
  "clangd",

  -- rust
  "rust_analyzer",

  -- java
  -- "jdtls",

  -- javascript/typescript
  -- "ts_ls",

  -- html
  "html",

  -- css
  "cssls",
  -- "tailwindcss"

  -- bash
  "bashls",

  -- markdown
  "marksman",

  -- json
  "jsonls",

  -- toml
  "taplo",

  -- yaml
  "yamlls",

  -- docker
  -- "dockerls",

  -- cmake
  -- "cmake",
}

vim.diagnostic.config({
  virtual_text = {
    prefix = function(diagnostic)
      local icons = {
        [vim.diagnostic.severity.ERROR] = " ",
        [vim.diagnostic.severity.WARN] = " ",
        [vim.diagnostic.severity.HINT] = "󰌵",
        [vim.diagnostic.severity.INFO] = " ",
      }
      return icons[diagnostic.severity] or "●"
    end,

    spacing = 2,
  },
  signs = false,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = nil,
    source = true,
  }
})

local mason = {
  "mason-org/mason.nvim",
  opts = {
    ui = {
      icons = {
        package_installed = "●",
        package_pending = "●",
        package_uninstalled = "○",
      }
    }
  },
}

local lspconfig = {
  "neovim/nvim-lspconfig",
}

local lazydev = {
  "folke/lazydev.nvim",
  ft = "lua",
  opts = {
    library = {
      { path = "${3rd}/luv/library", words = { "vim%.uv" } },
    },
  },
}

local mason_lspconfig = {
    "mason-org/mason-lspconfig.nvim",
    event = "VeryLazy",
    dependencies = { mason, lspconfig },
    config = function()
      local on_attach = function(client, bufnr)
        if client.server_capabilities.inlayHintProvider then
          vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })
        end
      end

      require("mason-lspconfig").setup({
        ensure_installed = autoinstalled_servers,
        automatic_installation = true,
        handlers = {
          -- Default handler - applies to all servers
          function(server_name)
            require("lspconfig")[server_name].setup({
              on_attach = on_attach,
            })
          end,
        },
      })
    end
  }

return {
  lazydev,
  mason_lspconfig
}
