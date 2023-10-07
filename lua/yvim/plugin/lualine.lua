local M = {}

function M.config()
    local lualine_utils = require("lualine.utils.utils")

    local colors = {
        insert = "#000000",
        normal = "#000000",
        visual = "#000000",
        replace = "#000000",
        command = "#000000",
        terminal = "#000000",
        error = "#000000",
        warning = "#000000",
        success = "#000000",
        modified = "#000000",
        branch = "#000000",
    }

    local function theme()
        local theme = require("lualine.utils.loader").load_theme("auto")

        -- Hook to extract theme colors after theme is loaded
        colors = {
            insert = theme.insert.b.fg,
            normal = theme.normal.b.fg,
            visual = theme.visual.b.fg,
            replace = theme.replace.b.fg,
            command = theme.command.b.fg,
            terminal = theme.terminal.b.fg,
            error = lualine_utils.extract_color_from_hllist(
                "fg",
                { "ErrorMsg" },
                "#000000"
            ),
            warning = lualine_utils.extract_color_from_hllist(
                "fg",
                { "WarningMsg" },
                "#000000"
            ),
            success = lualine_utils.extract_color_from_hllist(
                "fg",
                { "healthSuccess" },
                "#000000"
            ),
            modified = lualine_utils.extract_color_from_hllist(
                "fg",
                { "BufferLineModified", "NvimTreeModifiedFile" },
                "#000000"
            ),
            branch = lualine_utils.extract_color_from_hllist(
                "fg",
                { "NeogitBranch" },
                "#000000"
            ),
        }

        return theme
    end

    local function get_mode_color()
        local hl_suffix = require("lualine.highlight").get_mode_suffix()

        if hl_suffix == "_normal" then
            return colors.normal
        elseif hl_suffix == "_insert" then
            return colors.insert
        elseif hl_suffix == "_visual" then
            return colors.visual
        elseif hl_suffix == "_replace" then
            return colors.replace
        elseif hl_suffix == "_command" then
            return colors.command
        elseif hl_suffix == "_terminal" then
            return colors.terminal
        end
    end

    local navic_component = {
        function()
            return package.loaded["nvim-navic"].get_location()
        end,
        cond = function()
            return package.loaded["nvim-navic"]
                and package.loaded["nvim-navic"].is_available()
        end,
        draw_empty = true,
    }

    local config = {
        options = {
            theme = theme,
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
                "NvimTree",
                "qf",
                "terminal",
                "toggleterm",
                "Trouble",
            },
        },
        sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = {},
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
            lualine_c = { navic_component },
            lualine_x = {},
            lualine_y = {},
            lualine_z = {},
        },
        inactive_winbar = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = { navic_component },
            lualine_x = {},
            lualine_y = {},
            lualine_z = {},
        },
    }

    local function insert_left(component)
        table.insert(config.sections.lualine_c, component)
    end

    local function insert_right(component)
        table.insert(config.sections.lualine_x, component)
    end

    insert_left({
        function()
            return "▍"
        end,
        color = function()
            return { fg = get_mode_color() }
        end,
        padding = { left = 0, right = 1 },
    })

    insert_left({
        function()
            return vim.api.nvim_win_get_number(0)
        end,
        color = function()
            return { fg = get_mode_color(), gui = "bold" }
        end,
        padding = { left = 0, right = 1 },
    })

    insert_left({
        "mode",
        color = function()
            return { fg = get_mode_color(), gui = "bold" }
        end,
        fmt = function(str)
            return "<" .. str:sub(1, 1) .. ">"
        end,
    })

    insert_left({
        "searchcount",
        cond = function()
            -- Hide when recording a macro
            return vim.fn.reg_recording() == ""
        end,
        color = function()
            return "lualine_a" .. require("lualine.highlight").get_mode_suffix()
        end,
        fmt = function(str)
            -- Remove the brackets (e.g. [335/925] -> 335/925)
            return str:sub(2, -2)
        end,
    })

    insert_left({
        function()
            return "Macro "
        end,
        cond = function()
            return vim.fn.reg_recording() ~= ""
        end,
        color = function()
            return "lualine_a" .. require("lualine.highlight").get_mode_suffix()
        end,
    })

    insert_left({
        "filesize",
        cond = function()
            -- Hide when there's an active search or macro recording
            return vim.v.hlsearch == 0 and vim.fn.reg_recording() == ""
        end,
    })

    insert_left({
        function()
            if not vim.bo.modifiable then
                return "󰌾 "
            end

            if vim.bo.modified then
                return "󰆓 "
            end

            return ""
        end,
        color = function()
            if not vim.bo.modifiable then
                return { fg = colors.warning }
            end

            if vim.bo.modified then
                return { fg = colors.modified }
            end
        end,
        padding = { left = 1, right = 0 },
    })

    insert_left({
        "filename",
        file_status = false,
        color = function()
            if not vim.bo.modifiable then
                return { gui = "bold" }
            end

            if vim.bo.modified then
                return { fg = colors.modified, gui = "bold" }
            end

            return { gui = "bold" }
        end,
    })

    insert_left("location")

    insert_left("progress")

    local function get_lsp_actual_clients()
        local all_clients = vim.lsp.get_active_clients({ bufnr = 0 })

        return vim.tbl_filter(function(client)
            -- Exclude pseudo LSP clients
            return client.name ~= "copilot" and client.name ~= "null-ls"
        end, all_clients)
    end

    insert_right({
        function()
            return " "
        end,
        cond = function()
            local actual_clients = get_lsp_actual_clients()
            return 0 < #actual_clients
        end,
        color = function()
            local actual_clients = get_lsp_actual_clients()
            local stopped_clients = vim.tbl_filter(function(client)
                return client.is_stopped()
            end, actual_clients)

            if 0 < #stopped_clients then
                return { fg = colors.warning }
            end

            return { fg = colors.success }
        end,
        padding = { left = 0, right = 1 },
        on_click = function()
            vim.cmd([[LspInfo]])
        end,
    })

    insert_right({
        "fileformat",
        symbols = {
            unix = "LF",
            dos = "CRLF",
            mac = "CR",
        },
    })

    insert_right({
        "o:encoding",
        fmt = string.upper,
    })

    insert_right({ "filetype", icons_enabled = false })

    insert_right({
        "branch",
        icon = " ",
        color = function()
            return { fg = colors.branch }
        end,
    })

    local function count_diagnostics_by_severity()
        local diagnostics = vim.diagnostic.get(0)
        local counts = {
            [vim.diagnostic.severity.ERROR] = 0,
            [vim.diagnostic.severity.WARN] = 0,
            [vim.diagnostic.severity.INFO] = 0,
            [vim.diagnostic.severity.HINT] = 0,
        }

        for _, diagnostic in ipairs(diagnostics) do
            counts[diagnostic.severity] = counts[diagnostic.severity] + 1
        end

        return counts
    end

    insert_right({
        function()
            local count_by_severity = count_diagnostics_by_severity()

            if 0 < count_by_severity[vim.diagnostic.severity.ERROR] then
                return "󰗖  "
                    .. count_by_severity[vim.diagnostic.severity.ERROR]
            end

            if 0 < count_by_severity[vim.diagnostic.severity.WARN] then
                return "󰗖  "
                    .. count_by_severity[vim.diagnostic.severity.WARN]
            end

            return "󰄬 "
        end,
        color = function()
            local counts = count_diagnostics_by_severity()

            if 0 < counts[vim.diagnostic.severity.ERROR] then
                return { fg = colors.error }
            end

            if 0 < counts[vim.diagnostic.severity.WARN] then
                return { fg = colors.warning }
            end

            return { fg = colors.success }
        end,
    })

    require("lualine").setup(config)
end

return M
