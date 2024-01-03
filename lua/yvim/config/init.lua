local M = {}

local _opts = require("yvim.config.defaults")

function M.get()
    return _opts
end

function M.overwrite(opts)
    _opts = vim.tbl_deep_extend("force", _opts, opts)
end

function M.get_border_chars(hl)
    local border_chars
    if _opts.ui.border == "single" then
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
    if _opts.ui.border == "double" then
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
    if _opts.ui.border == "rounded" then
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
    if _opts.ui.border == "none" then
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
