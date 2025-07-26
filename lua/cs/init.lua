local config = require "cs.config"
local M = {}
function M.load(name)

        vim.cmd([[hi clear]])
        vim.g.colors_name = name
        vim.o.background = "light"
        vim.o.termguicolors = true

        require("cs." .. name).setup()
end

return M
