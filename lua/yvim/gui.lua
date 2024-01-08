local M = {}

function M.config()
    local config = require("yvim.config").get()

    vim.cmd.GuiTabline(0)
    vim.cmd.GuiPopupmenu(0)

    vim.cmd.GuiFont({
        bang = config.ui.font.forcedly_assign,
        args = { string.format("%s:h%d", config.ui.font.name, config.ui.font.size) },
    })

    -- Enable mouse
    vim.opt.mouse = "a"
    vim.keymap.set(
        { "n", "i", "x", "s" },
        "<RightMouse>",
        "<Cmd>call GuiShowContextMenu()<CR>",
        { silent = true }
    )
end

return M
