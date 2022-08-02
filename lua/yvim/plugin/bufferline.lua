local M = {}

function M.config()
    require("bufferline").setup({
        options = {
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
