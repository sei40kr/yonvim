local M = {}

function M.setup()
    require("yvim.util.special_buffer").register_filetype("aerial")
end

function M.config()
    require("aerial").setup({
        layout = {
            max_width = 35,
            width = 0.2,
            placement = "edge",
        },

        float = { border = yvim.ui.border },
    })
end

return M
