local M = {}

function M.config()
    local notify = require("notify")
    local keymap = require("yvim.util.keymap")
    local z = require("yvim.ui.zindex")

    notify.setup({
        render = "minimal",
        stages = "static",
        top_down = false,
        on_open = function(win)
            if vim.api.nvim_win_is_valid(win) then
                vim.api.nvim_win_set_config(win, {
                    zindex = z.NOTIFICATION,
                    border = yvim.ui.border,
                })
            end
        end,
    })

    vim.notify = notify

    keymap:set_for_ft("notify" , "n", {
        q = { "<C-w>c", "Quit" },
    })
end

return M
