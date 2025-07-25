local config = require "cs.config"
local M = {}
local names = {"lcc","cfblue"}
function M.load()

    for i = 1,#names do

        vim.cmd([[hi clear]])

        vim.g.colors_name = names[i]
        vim.o.background = "light"
        vim.o.termguicolors = true

        require("cs." .. names[i]).setup()
    end
end

return M
