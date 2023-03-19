local M = {}

function M.init()
    require("yvim.util.special_buffer").register_filetype("mason.nvim")
end

return M
