local M = {}

function M.config()
    require("bufferline").setup({
        options = {
            close_command = 'lua require("yvim.core.buffer").delete_buffer()',
            right_mouse_command = 'lua require("yvim.core.buffer").delete_buffer()',
            buffer_close_icon = "  ",
            modified_icon = "• ",
            indicator_icon = "▎ ",
            show_close_icon = false,
            separator_style = { "", "" },
            offsets = { { filetype = "NvimTree" } },
        },
    })
end

return M
