local M = {}

local lsp_pseudo_clients = vim.tbl_add_reverse_lookup({ "copilot", "null-ls" })

local components = {
    mode = "mode",
    winnr = function()
        return vim.api.nvim_win_get_number(0)
    end,
    file_status = {
        function()
            if vim.bo.modified then
                return "*"
            end
            if not vim.bo.modifiable then
                return "-"
            end
            return ""
        end,
        padding = { left = 1, right = 0 },
    },
    filesize = { "filesize", padding = { left = 1, right = 0 } },
    filename = { "filename", file_status = false },
    filetype = { "filetype", icons_enabled = false },
    diagnostics = {
        "diagnostics",
        symbols = {
            error = "● ",
            warn = "● ",
            info = "● ",
            hint = "● ",
        },
    },
    dimnish = {
        function()
            local section = ""

            local buffer = vim.api.nvim_get_current_buf()
            if require("vim.treesitter.highlighter").active[buffer] ~= nil then
                section = section .. "Ⓣ "
            end

            local lsp_actual_clients = vim.tbl_filter(function(client)
                return lsp_pseudo_clients[client] == nil
            end, vim.lsp.buf_get_clients(0))
            if #lsp_actual_clients > 0 then
                section = section .. "Ⓛ "
            end

            return section
        end,
    },
    branch = "branch",
    fileformat = {
        "fileformat",
        symbols = {
            unix = "unix",
            dos = "dos",
            mac = "mac",
        },
        separator = "|",
    },
    encoding = {
        "o:encoding",
        separator = "|",
    },
    location = { "location", padding = 1 },
}

function M.config()
    require("lualine").setup({
        options = {
            section_separators = { left = "", right = "" },
            component_separators = { left = "", right = "" },
            disabled_filetypes = {
                "DiffviewFiles",
                "help",
                "man",
                "NvimTree",
                "Outline",
                "qf",
                "terminal",
                "toggleterm",
                "Trouble",
            },
        },
        sections = {
            lualine_a = { components.mode },
            lualine_b = {
                components.file_status,
                components.filesize,
                components.filename,
            },
            lualine_c = {
                components.filetype,
                components.diagnostics,
                components.dimnish,
                components.branch,
            },
            lualine_x = {
                components.fileformat,
                components.encoding,
                components.location,
            },
            lualine_y = {},
            lualine_z = {},
        },
        inactive_sections = {
            lualine_a = { components.winnr },
            lualine_b = {
                components.file_status,
                components.filesize,
                components.filename,
            },
            lualine_c = {
                components.filetype,
                components.diagnostics,
                components.dimnish,
                components.branch,
            },
            lualine_x = {
                components.fileformat,
                components.encoding,
                components.location,
            },
            lualine_y = {},
            lualine_z = {},
        },
    })
end

return M
