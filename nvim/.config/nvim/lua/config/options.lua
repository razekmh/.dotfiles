-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- Set cursor to block in all modes
vim.opt.guicursor = "a:block"

---- Set a bright cursor color
--vim.api.nvim_create_autocmd("ColorScheme", {
--  pattern = "*",
--  callback = function()
--    vim.api.nvim_set_hl(0, "Cursor", { fg = "white", bg = "bright_red" })
--  end,
--})

-- Increase cursor contrast
vim.opt.cursorline = true
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.api.nvim_set_hl(0, "Cursor", { reverse = true, bold = true })
    vim.api.nvim_set_hl(0, "CursorLine", { underline = true })
  end,
})
