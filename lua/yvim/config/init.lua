local M = {}

local default_opts = require("yvim.config.defaults")

function M.init(opts)
    M.opts = vim.tbl_deep_extend("force", default_opts, opts or {})
end

function M.get_border_chars(hl)
    local border_chars
    if M.opts.ui.border == "single" then
        border_chars = {
            "┌",
            "─",
            "┐",
            "│",
            "┘",
            "─",
            "└",
            "│",
        }
    end
    if M.opts.ui.border == "double" then
        border_chars = {
            "╔",
            "═",
            "╗",
            "║",
            "╝",
            "═",
            "╚",
            "║",
        }
    end
    if M.opts.ui.border == "rounded" then
        border_chars = {
            "╭",
            "─",
            "╮",
            "│",
            "╯",
            "─",
            "╰",
            "│",
        }
    end
    if M.opts.ui.border == "none" then
        return { "", "", "", "", "", "", "", "" }
    end

    if hl ~= nil then
        border_chars = vim.tbl_map(function(char)
            return { char, hl }
        end, border_chars)
    end

    return border_chars
end

return M
