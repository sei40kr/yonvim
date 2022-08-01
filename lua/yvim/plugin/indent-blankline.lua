local M = {}

function M.config()
    local special_buffer = require("yvim.util.special_buffer")

    require("indent_blankline").setup({
        show_first_indent_level = false,
        filetype_exclude = special_buffer.get_filetypes(),
        buftype_exclude = special_buffer.get_buftypes(),
    })
end

return M
