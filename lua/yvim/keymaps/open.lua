local M = {}

function M.setup()
    require("yvim.utils.keymap").set_leader("n", {
        o = {
            name = "+open",
            p = { "<Cmd>NvimTreeToggle<CR>", "Project sidebar" },
            P = {
                "<Cmd>NvimTreeFindFile<CR>",
                "Find file in project sidebar",
            },
            t = { "<Cmd>ToggleTerm<CR>", "Toggle terminal popup" },
        },
    })
end

return M
