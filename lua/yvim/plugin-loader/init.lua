local M = {}

function M.load()
    local yonvim_config = require("yvim.config").get()

    require("lazy").setup({
        spec = {
            { import = "yvim.modules" },
            { import = "yvim.plugin-loader.plugin-specs" },
        },
        ui = { border = yonvim_config.ui.border },
        change_detection = { enabled = false },
        performance = {
            -- NOTE: Yonvim sets the packpath to load Lazy.nvim, Treesitter
            --  grammars, and other core plugins.
            reset_packpath = false,
            rtp = { reset = false },
        },
        readme = { enabled = false },
    })
end

return M
