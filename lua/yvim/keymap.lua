local M = {}

local function define_leader_groups()
    local keymap = require("yvim.util.keymap")

    keymap:set_leader("n", {
        b = { name = "+buffer" },
        c = {
            name = "+code",
            l = {
                name = "+lsp",
                F = { name = "+folders" },
            }
        },
        f = { name = "+file" },
        g = { name = "+git" },
        h = { name = "+help" },
        i = { name = "+insert" },
        o = { name = "+open" },
        p = { name = "+project" },
        q = { name = "+quit" },
        s = { name = "+search" },
        t = { name = "+toggle" },
        w = { name = "+window" },
    })
    keymap:set_leader("i", {
        i = { name = "+insert" },
    })
    keymap:set_leader("x", {
        c = { name = "+code" },
        g = { name = "+git" },
        i = { name = "+insert" },
    })
end

function M.load()
    define_leader_groups()

    require("yvim.git").load_autocmds()

    require("yvim.core").load_keymaps()
    require("yvim.buffer").load_keymaps()
    require("yvim.code").load_keymaps()
    require("yvim.editor").load_keymaps()
    require("yvim.file").load_keymaps()
    require("yvim.git").load_keymaps()
    require("yvim.project").load_keymaps()
    require("yvim.term").load_keymaps()
    require("yvim.window").load_keymaps()
end

return M
