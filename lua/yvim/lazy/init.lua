local M = {}

local config_opts = require("yvim.config").opts

function M.init()
    require("lazy").setup("yvim.plugins", {
        lockfile = vim.fn.expand("$LAZY_LOCKFILE"),
        install = { missing = false },
        ui = { border = config_opts.ui.border },
        change_detection = { enabled = false },
        performance = {
            reset_packpath = false,
            rtp = { reset = false },
        },
        readme = { root = vim.fn.expand("$LAZY_README") },
    })
end

local Config = require("lazy.core.config")

function M.plugin_loaded(plugin)
    return Config.plugins[plugin] and Config.plugins[plugin]._.loaded;
end

return M
