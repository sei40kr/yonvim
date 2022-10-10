local M = {}

function M.load_keymaps()
    local keymap = require("yvim.util.keymap")

    keymap:set_leader("n", {
        c = {
            d = { "gd", "Jump to definition", noremap = false },
            D = { "gD", "Jump to references", noremap = false },
            k = { "K", "Jump to documentation", noremap = false },
            r = "TS Rename",
        },
    })
end

return M
