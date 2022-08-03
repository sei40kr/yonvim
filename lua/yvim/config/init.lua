local M = {}

local log = require("yvim.utils.log")

function M.load()
    local path = require("yvim.util.path")

    _G.yvim = {}

    local config_path = path.join_paths(path.get_config_dir(), "config.lua")
    local ok, err = pcall(dofile, config_path)
    if not ok then
        if vim.fn.filereadable(config_path) then
            log.warn("Invalid configuration: " .. err)
        else
            vim.notify_once(
                ("Unable to find configuration file [%s]"):format(config_path),
                vim.log.levels.WARN
            )
        end
    end

    local defaults = require("yvim.config.defaults")
    _G.yvim = vim.tbl_deep_extend("force", defaults, _G.yvim)

    require("yvim.config.options").load()
    require("yvim.config.autocmds").load()

    vim.g.mapleader = yvim.leader
    vim.g.maplocalleader = yvim.localleader

    if vim.g.GuiLoaded then
        vim.cmd([[
          GuiTabline   0
          GuiPopupmenu 0
        ]])

        vim.cmd(
            ("GuiFont%s %s:h%d"):format(
                yvim.ui.font.forcedly_assign and "!" or "",
                yvim.ui.font.name,
                yvim.ui.font.size
            )
        )

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

function M.get_border_chars()
    if yvim.ui.border == "single" then
        return { "┌", "─", "┐", "│", "┘", "─", "└", "│" }
    end
    if yvim.ui.border == "double" then
        return { "╔", "═", "╗", "║", "╝", "═", "╚", "║" }
    end
    if yvim.ui.border == "rounded" then
        return { "╭", "─", "╮", "│", "╯", "─", "╰", "│" }
    end
    if yvim.ui.border == "solid" then
        return { " ", " ", " ", " ", " ", " ", " ", " " }
    end

    -- yvim.ui.border == "none"
    return { "", "", "", "", "", "", "", "" }
end

return M
