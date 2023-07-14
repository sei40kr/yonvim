local M = {}

local config_opts = require("yvim.config").opts

function M.config()
    local notify = require("notify")
    local log = require("structlog")
    local Logger = require("yvim.utils.logger")
    local z = require("yvim.ui.zindex")

    notify.setup({
        render = "minimal",
        stages = "static",
        top_down = false,
        on_open = function(win)
            if vim.api.nvim_win_is_valid(win) then
                vim.api.nvim_win_set_config(win, {
                    zindex = z.NOTIFICATION,
                    border = config_opts.ui.border,
                })
            end
        end,
    })

    Logger:add_pipeline(log.Pipeline(
        log.level.WARN,
        {},
        log.formatters.Format(
            "%s",
            { "msg" },
            { blacklist = { "level", "logger_name" } }
        ),
        log.sinks.NvimNotify()
    ))
end

return M
