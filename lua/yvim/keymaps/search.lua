local M = {}

function M.setup()
    require("yvim.utils.keymap").set_leader("n", {
        s = {
            name = "+search",
            j = {
                function()
                    require("telescope.builtin").jumplist()
                end,
                "Jump list",
            },
            p = {
                function()
                    require("yvim.project").search_in_project()
                end,
                "Search project",
            },
            r = {
                function()
                    require("telescope.builtin").marks()
                end,
                "Jump to mark",
            },
        },
    })
end

return M
