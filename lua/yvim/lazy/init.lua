local M = {}

function M.init()
    require("lazy").setup(
        require("yvim.lazy.plugins"),
        {
            lockfile = os.getenv("YVIM_LAZY_LOCKFILE"),
            install = { missing = false },
            ui = { border = yvim.ui.border },
            change_detection = { enabled = false },
            performance = {
                cache = {
                    enabled = true,
                    path = os.getenv("YVIM_LAZY_CACHE_PATH"),
                },
                reset_packpath = false,
                rtp = { reset = false },
            },
            readme = { root = os.getenv("YVIM_LAZY_README_ROOT") },
        }
    )
end

local Config = require("lazy.core.config")

function M.plugin_loaded(plugin)
    return Config.plugins[plugin] and Config.plugins[plugin]._.loaded;
end

return M
