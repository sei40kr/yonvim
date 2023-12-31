local M = {}

local config_opts = require("yvim.config").opts

function M.init()
    require("lazy").setup("yvim.plugins", {
        ui = { border = config_opts.ui.border },
        change_detection = { enabled = false },
        performance = {
            -- NOTE: Yonvim sets the packpath to load lazy.nvim and Tree-sitter
            --  grammars.
            reset_packpath = false,
            rtp = { reset = false },
        },
        readme = { enabled = false },
    })
end

local Config = require("lazy.core.config")

function M.plugin_loaded(plugin)
    return Config.plugins[plugin] and Config.plugins[plugin]._.loaded;
end

return M
