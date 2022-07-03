local M = {}

function M:load()
    require("yvim.config.options").load()
    require("yvim.config.autocmds").load()

    vim.g.mapleader = " "
    vim.g.maplocalleader = ","
end

return M
