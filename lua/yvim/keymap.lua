local M = {}

function M.load()
    require("yvim.git").load_autocmds()

    require("yvim.core").load_keymaps()
end

return M
