local M = {}

function M.setup() end

function M.config()
    -- close-buffers.nvim
    require("yvim.plugin.close-buffers").config()

    -- nvim-web-devicons
    require("yvim.plugin.web-devicons").config()

    -- project.nvim
    require("yvim.plugin.project").config()

    -- stickybuf.nvim
    require("yvim.plugin.stickybuf").config()
end

return M
