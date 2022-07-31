local M = {}

function M.setup() end

function M.config()
    -- auto-session
    require("yvim.plugin.auto-session").config()

    -- session-lens
    require("yvim.plugin.session-lens").config()
end

return M
