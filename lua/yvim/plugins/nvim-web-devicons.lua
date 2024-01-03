local M = {}

function M.config()
    local devicons = require("nvim-web-devicons")

    local override = {
        default_icon = {
            icon = " ",
            color = "#6d8086",
            cterm_color = "66",
            name = "Default",
        },
    }
    for name, data in pairs(devicons.get_icons()) do
        local icon = data.icon
        local pad = vim.api.nvim_strwidth(icon) == 1 and " " or ""
        override[name] = vim.tbl_extend("force", data, { icon = icon .. pad })
    end

    devicons.setup({ override = override })
end

return M
