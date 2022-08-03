local active_bar = {
    function()
        return "▍"
    end,
    color = "BufferLineIndicatorSelected",
    padding = 0,
}
local inactive_bar = {
    function()
        return " "
    end,
    padding = 0,
}

local branch = {
    "branch",
    color = { gui = "bold" },
}

local encoding = {
    "o:encoding",
    fmt = string.upper,
}

local diagnostics = {
    "diagnostics",
    sources = { "nvim_diagnostic" },
    symbols = {
        error = " ",
        warn = " ",
        info = " ",
        hint = " ",
    },
}

local fileformat = {
    "fileformat",
    symbols = {
        unix = "LF",
        dos = "CRLF",
        mac = "CR",
    },
}

local filename = {
    "filename",
    color = { gui = "bold" },

    path = 1,
    shorting_target = 40,
    symbols = {
        modified = "[+]",
        readonly = "[-]",
        unnamed = "[No Name]",
    },
}

local filetype = {
    "filetype",
    icons_enabled = false,

    colored = false,
    color = { gui = "bold" },
}
local filetype_icon = {
    "filetype",
    padding = { left = 1, right = 0 },

    icon_only = true,
}

local lsp = require("yvim.plugin.lualine.component.lsp")

local mode = {
    "mode",
    color = { gui = "bold" },
    fmt = function(mode)
        return "<" .. mode:sub(1, 1) .. ">"
    end,
}

return {
    options = {
        section_separators = "",
        component_separators = "",
    },
    sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
            active_bar,
            mode,
            "filesize",
            filetype_icon,
            filename,
            "location",
        },
        lualine_x = {
            lsp,
            fileformat,
            encoding,
            filetype,
            branch,
            diagnostics,
        },
        lualine_y = {},
        lualine_z = {},
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {
            inactive_bar,
            mode,
            "filesize",
            filetype_icon,
            filename,
            "location",
        },
        lualine_x = {
            lsp,
            fileformat,
            encoding,
            filetype,
            branch,
            diagnostics,
        },
        lualine_y = {},
        lualine_z = {},
    },
}
