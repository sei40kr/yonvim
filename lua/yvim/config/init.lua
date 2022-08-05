local M = {}

local log = require("yvim.utils.log")

function M.load()
    local defaults = require("yvim.config.defaults")
    local path = require("yvim.util.path")

    _G.yvim = defaults

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

function M.get_border_chars(hl)
    local border_chars
    if yvim.ui.border == "single" then
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
    if yvim.ui.border == "double" then
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
    if yvim.ui.border == "rounded" then
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
    if yvim.ui.border == "solid" then
        border_chars = { " ", " ", " ", " ", " ", " ", " ", " " }
    end
    if yvim.ui.border == "none" then
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
