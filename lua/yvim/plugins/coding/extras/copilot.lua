local config_opts = require("yvim.config").opts

return {
    {
        "copilot.lua",
        opts = {
            panel = { enabled = false },
            suggestion = { enabled = false },
            filetypes = config_opts.completion.copilot.filetypes,
        },
        main = "copilot",
        cmd = "Copilot",
    },
    {
        "nvim-cmp",
        dependencies = {
            {
                "copilot-cmp",
                lazy = true,
                dependencies = { "copilot.lua" },
                config = true,
            },
        },
    }
}
