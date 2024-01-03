local M = {}

local lualine_utils = require("lualine.utils.utils")

function M.config()
    local navic = {
        function()
            return package.loaded["nvim-navic"].get_location()
        end,
        cond = function()
            return package.loaded["nvim-navic"]
                and package.loaded["nvim-navic"].is_available()
        end,
        draw_empty = true,
    }

    require("lualine").setup({
        options = {
            section_separators = { left = "", right = "" },
            component_separators = { left = "", right = "" },
            disabled_filetypes = {
                "aerial",
                "alpha",
                "DiffviewFiles",
                "DiffviewFileHistory",
                "help",
                "iron",
                "man",
                "NeogitCommitSelectView",
                "NeogitCommitView",
                "NeogitConsole",
                "NeogitGitCommandHistory",
                "NeogitLogView",
                "NeogitPopup",
                "NeogitStatus",
                "neo-tree",
                "qf",
                "terminal",
                "toggleterm",
                "Trouble",
            },
        },
        sections = {
            lualine_a = {
                "mode",
                {
                    "searchcount",
                    fmt = function(str)
                        -- Remove the brackets (e.g. [335/925] -> 335/925)
                        return str:sub(2, -2)
                    end,
                },
            },
            lualine_b = {
                {
                    "filesize",
                    padding = { left = 1, right = 0 },
                },
                {
                    "filename",
                    symbols = {
                        modified = "⦁",
                        readonly = " ",
                        unnamed = "No Name",
                    },
                },
            },
            lualine_c = {
                require("yvim.plugins.lualine-nvim.components.lsp_status"),
                require("yvim.plugins.lualine-nvim.components.diagnostics"),
            },
            lualine_x = {
                {
                    "diff",
                    symbols = {
                        added = "  ",
                        modified = "  ",
                        removed = "  ",
                    },
                },
                {
                    "branch",
                    color = function()
                        return {
                            fg = lualine_utils.extract_color_from_hllist(
                                "fg",
                                { "NeogitBranch" },
                                nil
                            ),
                        }
                    end,
                    icon = " ",
                },
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
            },
            lualine_y = {
                "filetype",
            },
            lualine_z = {
                "location",
                "progress",
            },
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = {},
        },
        winbar = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { navic },
            lualine_x = {},
            lualine_y = {},
            lualine_z = {},
        },
        inactive_winbar = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { navic },
            lualine_x = {},
            lualine_y = {},
            lualine_z = {},
        },
    })
end

return M
