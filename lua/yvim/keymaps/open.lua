local M = {}

function M.setup()
    require("yvim.utils.keymap").set_leader("n", {
        o = {
            name = "+open",
            p = {
                function()
                    require("yvim.project").toggle_project_sidebar()
                end,
                "Project sidebar",
            },
            P = {
                function()
                    require("yvim.project").find_file_in_project_sidebar()
                end,
                "Find file in project sidebar",
            },
            t = { "<Cmd>ToggleTerm<CR>", "Toggle terminal popup" },
        },
    })
end

return M
