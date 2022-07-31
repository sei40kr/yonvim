local M = {}

function M.config()
    local actions = require("diffview.actions")

    require("diffview").setup({
        icons = {
            folder_closed = " ",
            folder_open = " ",
        },
        file_panel = { listing_style = "list" },
        key_bindings = {
            view = { q = actions.close },
            file_panel = { q = actions.close },
            file_history_panel = { q = actions.close },
        },
    })
end

return M
