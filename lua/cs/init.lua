local config = require "cs.config"
local M = {}

vim.g.colors_name = "cs"
vim.o.background = "light"
vim.o.termguicolors = true

-- require("cs.theme").setup()
vim.cmd([[hi clear]])

return M
