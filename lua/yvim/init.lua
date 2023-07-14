local M = {}

local config = require("yvim.config")

M.setup = function(opts)
    config.init(opts)

    local config_opts = config.opts

    -- Disable built-in plugins
    vim.g.loaded_gzip = 1
    vim.g.loaded_matchit = 1
    vim.g.loaded_matchparen = 1
    vim.g.loaded_netrwPlugin = 1
    vim.g.loaded_tarPlugin = 1
    vim.g.loaded_tohtml = 1
    vim.g.loaded_tutor = 1
    vim.g.loaded_zipPlugin = 1

    vim.g.mapleader = config_opts.leader_key
    vim.g.maplocalleader = config_opts.localleader_key

    require("yvim.lazy").init()
    require("yvim.config.autocmds")
    require("yvim.config.keymaps")
    require("yvim.config.options")

    if vim.g.GuiLoaded then
        vim.cmd([[
          GuiTabline   0
          GuiPopupmenu 0
        ]])

        vim.cmd(
            ("GuiFont%s %s:h%d"):format(
                config_opts.ui.font.forcedly_assign and "!" or "",
                config_opts.ui.font.name,
                config_opts.ui.font.size
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
