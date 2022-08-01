local M = {}

local function validate_border(border)
    return border == "none"
        or border == "single"
        or border == "double"
        or border == "rounded"
        or border == "solid"
end

function M.get_border_chars(border)
    if not validate_border(border) then
        require("yvim.utils.log").warn(
            "[yvim.util.ui.get_border_chars] Unexpected border value: "
                .. border
        )
        return { "", "", "", "", "", "", "", "" }
    end

    if border == "single" then
        return { "┌", "─", "┐", "│", "┘", "─", "└", "│" }
    end
    if border == "double" then
        return { "╔", "═", "╗", "║", "╝", "═", "╚", "║" }
    end
    if border == "rounded" then
        return { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
    end
    if border == "solid" then
        return { " ", " ", " ", " ", " ", " ", " ", " " }
    end

    -- border == "none"
    return { "", "", "", "", "", "", "", "" }
end

return M
