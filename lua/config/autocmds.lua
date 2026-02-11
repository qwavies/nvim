-- highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("HighlightOnYank", { clear = true }),
  desc = "Highlight when yanking (copying) text",
  callback = function()
    vim.hl.on_yank({ higroup = "YankHighlight", timeout = 300 })
  end,
})

-- removes autocommenting
vim.api.nvim_create_autocmd({"BufRead", "LspAttach"}, {
  desc = "Disables autocommenting",
  callback = function()
    vim.opt.formatoptions:remove({ "r", "o" })
  end,
})

-- yank notification
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("YankNotification", { clear = true }),
  desc = "Send notification when yanking (copying) text",
  callback = function()
    if vim.v.event.operator ~= 'y' then
      return
    end

    local lines_yanked = vim.fn.line("']") - vim.fn.line("'[") + 1
    if lines_yanked > 1 then
      vim.schedule(function()
        vim.notify(string.format("%d lines yanked", lines_yanked), vim.log.levels.INFO, { timeout = 1500 })
      end)
    end
  end,
})

-- write notification
vim.api.nvim_create_autocmd("BufWritePost", {
  group = vim.api.nvim_create_augroup("SaveNotification", { clear = true }),
  callback = function()
    vim.schedule(function()
      local filename = vim.fn.expand("%:t")
      local filepath = vim.fn.expand("%:p")
      local filesize = vim.fn.getfsize(filepath)

      local size_str
      if filesize < 1024 then
        size_str = string.format("%dB", filesize)
      elseif filesize < 1024 * 1024 then
        size_str = string.format("%.1fKB", filesize / 1024)
      else
        size_str = string.format("%.1fMB", filesize / (1024 * 1024))
      end

      local message = string.format(
        "%s, %s saved",
        size_str,
        filename
      )

      vim.notify(message, vim.log.levels.INFO)
    end)
  end,
})
