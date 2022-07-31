local M = {}

function M.setup() end

function M.config()
    -- nvim-web-devicons
    require("yvim.plugin.web-devicons").config()

    -- project.nvim
    require("yvim.plugin.project").config()
end

return M
