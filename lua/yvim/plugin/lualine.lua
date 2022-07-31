local M = {}

local pseudo_lsp_clients = {
    copilot = true,
    ["null-ls"] = true,
}

function M.config()
    require("lualine").setup({
        options = {
            section_separators = "",
            component_separators = "",
            disabled_filetypes = { "NvimTree" },
        },
        sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {
                {
                    function()
                        return "▍"
                    end,
                    padding = 0,
                },
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
                -- LSP
                {
                    function()
                        return " "
                    end,
                    cond = function()
                        local clients = vim.tbl_filter(function(client)
                            return pseudo_lsp_clients[client.name] == nil
                        end, vim.lsp.buf_get_clients(0))

                        return #clients > 0
                    end,
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
        },
    })
end

return M
