local M = {}

local function reset_logo_hls()
    local green = vim.g.terminal_color_2
    local blue = vim.g.terminal_color_4
    local gray = vim.api.nvim_get_hl(0, { name = "Comment" }).fg

    vim.api.nvim_set_hl(0, "YonvimDashboardLogo1", { fg = blue })
    vim.api.nvim_set_hl(0, "YonvimDashboardLogo2", { fg = green })
    vim.api.nvim_set_hl(0, "YonvimDashboardLogo3", { fg = green, bg = blue })
    vim.api.nvim_set_hl(0, "YonvimDashboardFooter", { fg = gray })
end

function M.opts()
    local dashboard = require("alpha.themes.dashboard")
    local startup_time = nil

    reset_logo_hls()

    dashboard.section.header.val = {
        [[            ]],
        [[     ██     ]],
        [[      █      ]],
        [[       ██       ]],
        [[              ]],
        [[]],
        [[Y  O  N  V  I  M]],
    }
    dashboard.section.header.opts.hl = {
        { { "YonvimDashboardLogo1", 6, 11 }, { "YonvimDashboardLogo2", 14, 19 } },
        { { "YonvimDashboardLogo1", 6, 14 }, { "YonvimDashboardLogo2", 15, 23 } },
        { { "YonvimDashboardLogo1", 7, 9 },  { "YonvimDashboardLogo3", 10, 12 }, { "YonvimDashboardLogo2", 13, 18 } },
        { { "YonvimDashboardLogo2", 8, 13 } },
        { { "YonvimDashboardLogo2", 8, 13 } },
        {},
        {},
    }
    dashboard.section.buttons.val = {}

    dashboard.section.footer.val = function()
        if not startup_time then
            return {}
        end
        return { string.format("Loaded in %.0fms", startup_time) }
    end
    dashboard.section.footer.opts.hl = { { { "YonvimDashboardFooter", 0, 15 } } }

    local augroup = vim.api.nvim_create_augroup("yonvim_alpha", {})

    vim.api.nvim_create_autocmd("ColorScheme", {
        group = augroup,
        callback = function()
            reset_logo_hls()
        end,
    })

    vim.api.nvim_create_autocmd("User", {
        group = augroup,
        pattern = "LazyVimStarted",
        callback = function()
            startup_time = require("lazy").stats().startuptime
            vim.cmd.AlphaRedraw()
        end,
    })

    return dashboard.config
end

return M
