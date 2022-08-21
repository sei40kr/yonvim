local M = {}

function M.setup()
    local keymaps = require("yvim.util.keymaps")

    keymaps:set_leader("n", { v = "Expand region" })
end

function M.config() end

return M
