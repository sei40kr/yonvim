local M = {}

function M.setup()
    local keymap = require("yvim.utils.keymap")

    keymap.set_leader("n", {
        i = {
            name = "+insert",
            e = {
                function()
                    require("telescope.builtin").symbols({ sources = { "emoji" } })
                end,
                "Emoji",
            },
            r = {
                function()
                    require("telescope.builtin").registers()
                end,
                "From register",
            },
            s = {
                function()
                    require("telescope").extensions.luasnip.luasnip({})
                end,
                "Snippet",
            },
        },
    })
    keymap.set("n", {
        ["[<Space>"] = {
            function()
                require("yvim.insert").insert_newline_above()
            end,
            "Insert newline above",
        },
        ["]<Space>"] = {
            function()
                require("yvim.insert").insert_newline_below()
            end,
            "Insert newline below",
        },
    })
end

return M
