local M = {}

function M.config()
    require("mini.trailspace").setup({})

    require("yvim.util.keymap"):set_leader("n", {
        c = {
            ---@diagnostic disable-next-line: undefined-global
            w = { MiniTrailspace.trim, "Delete trailing whitespace" },
            ---@diagnostic disable-next-line: undefined-global
            W = { MiniTrailspace.trim_last_lines, "Delete trailing newlines" },
        },
    })
end

return M
