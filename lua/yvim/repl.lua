local M = {}

local function open_repl()
    require("iron.core").repl_for(vim.bo.filetype)
end

local function open_repl_in_same_win()
    require("iron.core").repl_here(vim.bo.filetype)
end

local function send_visual_to_repl()
    require("iron.core").visual_send()
end

function M.load_keymaps()
    local keymap = require("yvim.util.keymap")

    keymap:set_leader("n", {
        -- +code
        c = {
            s = { send_visual_to_repl, "Send to REPL" },
        },
        -- +open
        o = {
            r = { open_repl, "Open REPL" },
            R = { open_repl_in_same_win, "Open REPL" },
        },
    })
    keymap:set_leader("x", {
        -- +code
        c = {
            s = { send_visual_to_repl, "Send to REPL" },
        },
    })
end

return M
