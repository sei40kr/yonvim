local M = {}

function M.setup()
    local keymap = require("yvim.utils.keymap")

    keymap.set_leader("n", {
        c = {
            name = "+code",
            d = { "gd", "Jump to definition", noremap = false },
            D = { "gD", "Jump to references", noremap = false },
            k = { "K", "Jump to documentation", noremap = false },
            r = "TS Rename",
        },
    })

    keymap.set("n", {
        g = {
            d = "Jump to definition",
            D = "Jump to references",
        },
        ["[c"] = "Previous comment",
        ["]c"] = "Next comment",
    })
end

return M
