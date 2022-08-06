local M = {}

function M.load()
    require("yvim.core.keymap.global").load()
    require("yvim.core.keymap.leader").load()
end

return M
