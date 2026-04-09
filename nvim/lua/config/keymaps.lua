-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<Esc>", function()
  vim.diagnostic.open_float(nil, { focus = false })
end, { desc = "Show diagnostics on ESC" })
