local M = {}

function M.setup() end

function M.config()
    -- neogit
    require("yvim.plugin.neogit").config()

    -- octo.nvim
    require("yvim.plugin.octo").config()
end

return M
