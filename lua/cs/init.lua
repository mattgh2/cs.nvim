local config = require "cs.config"
local M = {}


function M.load()

    vim.cmd([[hi clear]])

    vim.g.colors_name = "cs"
    vim.o.background = "light"
    vim.o.termguicolors = true
    require("cs.theme").setup()
end

return M
