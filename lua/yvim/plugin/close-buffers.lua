local M = {}

function M.config()
    local special_buffer = require("yvim.util.special_buffer")

    require("close_buffers").setup({
        filetype_ignore = special_buffer.get_filetypes(),
    })
end

return M
