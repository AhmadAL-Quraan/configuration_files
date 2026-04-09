-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_set_hl(0, "Search", {
  fg = "#ffffff",
  bg = "#a88bff",
  bold = true,
})

vim.api.nvim_set_hl(0, "IncSearch", {
  fg = "#1b1a2a",
  bg = "#ff7ad9",
  bold = true,
})
