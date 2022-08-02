local M = {}

local sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {
        require("yvim.plugin.lualine.components").bar,
        "filesize",
        {
            "filetype",
            padding = { left = 1, right = 0 },

            icon_only = true,
        },
        {
            "filename",
            color = { gui = "bold" },

            path = 1,
            shorting_target = 40,
            symbols = {
                modified = "[+]",
                readonly = "[-]",
                unnamed = "[No Name]",
            },
        },
        "location",
    },
    lualine_x = {
        require("yvim.plugin.lualine.components").lsp,
        {
            "fileformat",
            symbols = {
                unix = "LF",
                dos = "CRLF",
                mac = "CR",
            },
        },
        {
            "o:encoding",
            fmt = string.upper,
        },
        {
            "filetype",
            icons_enabled = false,

            colored = false,
            color = { gui = "bold" },
        },
        {
            "branch",
            color = { gui = "bold" },
        },
        {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            symbols = {
                error = " ",
                warn = " ",
                info = " ",
                hint = " ",
            },
        },
    },
    lualine_y = {},
    lualine_z = {},
}

M.options = {
    section_separators = "",
    component_separators = "",
}

M.sections = sections
M.inactive_sections = sections

return M
