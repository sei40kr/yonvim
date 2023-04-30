return {
    {
        dir = "@copilot@",
        name = "copilot",
        opts = {
            panel = { enabled = false },
            suggestion = { auto_trigger = true },
            filetypes = yvim.completion.copilot.filetypes,
        },
        main = "copilot",
        event = "InsertEnter *",
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
                opts = function()
                    return {
                        formatters = {
                            insert_text = require("copilot_cmp.format").remove_existing,
                        },
                    }
                end,
                config = function(_, opts)
                    require("copilot_cmp").setup(opts)

                    local cmp = require("cmp")
                    cmp.event:on("menu_opened", function()
                        vim.b.copilot_suggestion_hidden = true
                    end)
                    cmp.event:on("menu_closed", function()
                        vim.b.copilot_suggestion_hidden = false
                    end)
                end,
            },
        },
    }
}
