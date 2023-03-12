local M = {}

function M.init()
    -- NOTE: somehow os.getenv doesn't work so using vim.fn.expand instead
    require("lazy.core.cache").path = vim.fn.expand("$LAZY_CACHE")
    require("lazy").setup(require("yvim.lazy.plugins"), {
        lockfile = vim.fn.expand("$LAZY_LOCKFILE"),
        install = { missing = false },
        ui = { border = yvim.ui.border },
        change_detection = { enabled = false },
        performance = {
            cache = { enabled = true },
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
