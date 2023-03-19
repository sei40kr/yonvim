local M = {}

function M.init()
    require("yvim.util.special_buffer").register_filetype("DiffviewFiles")
end

return M
