local M = {}

function M.setup() end

function M.config()
    -- nvim-web-devicons
    local nvim_web_devicons = require("nvim-web-devicons")
    local override = {
        default_icon = {
            icon = " ",
            color = "#6d8086",
            cterm_color = "66",
            name = "Default",
        },
    }
    for name, data in pairs(nvim_web_devicons.get_icons()) do
        local icon = data.icon
        local pad = vim.api.nvim_strwidth(icon) == 1 and " " or ""
        override[name] = vim.tbl_extend("force", data, { icon = icon .. pad })
    end
    nvim_web_devicons.setup({ override = override })

    -- project.nvim
    require("project_nvim").setup({
        manual_mode = true,
        detection_methods = { "pattern" },
        patterns = { ".git" },
    })
end

return M
