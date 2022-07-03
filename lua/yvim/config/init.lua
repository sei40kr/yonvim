local M = {}

function M:load()
    require("yvim.config.options").load()
    require("yvim.config.autocmds").load()

    vim.g.mapleader = " "
    vim.g.maplocalleader = ","

    if vim.g.GuiLoaded then
        vim.cmd([[
          GuiTabline   0
          GuiPopupmenu 0
        ]])

        -- Enable mouse
        vim.opt.mouse = "a"
        vim.keymap.set(
            "n",
            "<RightMouse>",
            "<Cmd>call GuiShowContextMenu()<CR>",
            { silent = true }
        )
        vim.keymap.set(
            "i",
            "<RightMouse>",
            "<Cmd>call GuiShowContextMenu()<CR>",
            { silent = true }
        )
        vim.keymap.set(
            "x",
            "<RightMouse>",
            "<Cmd>call GuiShowContextMenu()<CR>",
            { silent = true }
        )
        vim.keymap.set(
            "s",
            "<RightMouse>",
            "<Cmd>call GuiShowContextMenu()<CR>",
            { silent = true }
        )
    end
end

return M
