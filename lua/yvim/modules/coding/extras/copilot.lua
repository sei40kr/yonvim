local yonvim_config = require("yvim.config").get()

return {
    {
        "copilot.lua",
        opts = {
            panel = { enabled = false },
            suggestion = { enabled = false },
            filetypes = yonvim_config.completion.copilot.filetypes,
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
