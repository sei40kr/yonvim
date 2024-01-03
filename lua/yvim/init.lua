local M = {}

M.setup = function(opts)
    local config = require("yvim.config")
    config.overwrite(opts)

    -- Disable built-in plugins
    vim.g.loaded_gzip = 1
    vim.g.loaded_matchit = 1
    vim.g.loaded_matchparen = 1
    vim.g.loaded_netrwPlugin = 1
    vim.g.loaded_tarPlugin = 1
    vim.g.loaded_tohtml = 1
    vim.g.loaded_tutor = 1
    vim.g.loaded_zipPlugin = 1

    local yonvim_config = config.get()
    vim.g.mapleader = yonvim_config.leader_key
    vim.g.maplocalleader = yonvim_config.localleader_key

    require("yvim.options").load()

    if vim.g.GuiLoaded then
        require("yvim.gui").config()
    end

    require("yvim.plugin-loader").load()

    require("yvim.keymaps").load()
    require("yvim.autocmds").load()

    require("yvim.lsp").config()

    vim.cmd("colorscheme " .. config.get().colorscheme.name)
end

return M
