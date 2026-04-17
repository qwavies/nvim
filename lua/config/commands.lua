vim.api.nvim_create_user_command(
  "ToHtml",
  function()
    vim.cmd("packadd nvim.tohtml")
    vim.cmd("TOhtml")
  end,
  { desc = "Convert the current buffer to HTML" }
)
