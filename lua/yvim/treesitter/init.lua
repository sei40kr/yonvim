local M = {}

function M.setup()
    local keymap = require("yvim.util.keymap")

    keymap:set_leader("n", { v = "Expand region" })
end

function M.config() end

return M
