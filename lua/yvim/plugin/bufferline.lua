local M = {}

function M.config()
    require("bufferline").setup({
        options = {
            close_command = 'lua require("yvim.buffer").del_buf()',
            right_mouse_command = 'lua require("yvim.buffer").del_buf()',
            buffer_close_icon = "  ",
            modified_icon = "• ",
            indicator_icon = "▎ ",
            diagnostics = "nvim_lsp",
            diagnostics_indicator = nil,
            show_close_icon = false,
            separator_style = { "", "" },
            offsets = { { filetype = "NvimTree" } },
        },
    })
end

return M
