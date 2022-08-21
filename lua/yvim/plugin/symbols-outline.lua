local M ={}

function M.setup()
    local special_buffer = require("yvim.util.special_buffer")

    -- symbols-outline.nvim
    vim.g.symbols_outline = {
        highlight_hovered_item = false,
        show_guides = false,
        position = "left",
        width = 35,
        -- TODO: Customize icons
        symbols = {},
    }

    special_buffer.register_filetype("Outline")
end

return M
