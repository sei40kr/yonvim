local config_opts = require("yvim.config").opts

return {
    {
        dir = "@copilot@",
        name = "copilot",
        opts = {
            panel = { enabled = false },
            suggestion = { enabled = false },
            filetypes = config_opts.completion.copilot.filetypes,
        },
        main = "copilot",
        cmd = "Copilot",
    },
    {
        dir = "@cmp@",
        dependencies = {
            {
                dir = "@copilot_cmp@",
                name = "copilot_cmp",
                lazy = true,
                dependencies = { "copilot" },
                config = true,
            },
        },
    }
}
