local M = {}

local log = require("yvim.utils.log")

local defaults = require("yvim.config.defaults")

local function get_user_config_dir()
    local base_dir = vim.fn.getenv("XDG_CONFIG_HOME")
    if base_dir == vim.NIL then
        base_dir = vim.fn.expand("~/.config", true, false)
    end

    return base_dir .. "/yvim"
end

local function get_user_config_path()
    return get_user_config_dir() .. "/config.lua"
end

function M.load()
    yvim = vim.deepcopy(defaults)

    local config_path = get_user_config_path()
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

return M
